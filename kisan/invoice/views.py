from django.shortcuts import render
from rest_framework import generics
from .serializers import OrdersSerializer
from .models import Sellers, Buyers, Orders, OrderItems, Items
from django.templatetags.static import static
from django.http import HttpResponse
from django.views.generic import View
from .utils import render_to_pdf


def generateOrderTemplate(request):
    return render(request, 'order.html', {})


class GetOrder(generics.ListAPIView):
    serializer_class = OrdersSerializer

    def get_queryset(self):
        orders = Orders.objects.values('id', 'orderSeller__name', 'orderSeller__address', 'orderBuyer__name',
                                       'orderBuyer__address', 'created_at')
        for order in orders:
            ItemsList = OrderItems.objects.values('orderItemsSeller__name', 'orderItemsSeller__price',
                                                  'quantity', 'orderItemsSeller__tex').filter(
                orderItemsSeller=order["id"])

            total = 0
            for item in ItemsList:
                item["amount"] = ((item["orderItemsSeller__price"] * item["quantity"]) + (
                        item["orderItemsSeller__price"] * item["quantity"]) * (item["orderItemsSeller__tex"] / 100))
                total = total + (item["orderItemsSeller__price"] * item["quantity"]) + (
                        item["orderItemsSeller__price"] * item["quantity"]) * (item["orderItemsSeller__tex"] / 100)
            order["items"] = ItemsList
            order["total"] = total
        return orders


class GeneratePdf(View):
    def get(self, request, *args, **kwargs):
        orderId = self.kwargs['id']
        order = list(Orders.objects.values('id', 'orderSeller__name', 'orderSeller__address', 'orderBuyer__name',
                                           'orderBuyer__address', 'created_at', "orderSeller__signature").filter(
            id=orderId))
        ItemsList = OrderItems.objects.values_list('orderItemsSeller__name', 'orderItemsSeller__price',
                                                   'quantity', 'orderItemsSeller__tex').filter(
            orderItemsSeller=orderId)

        items = []
        total = 0
        for item in ItemsList:
            tempList = list(item)
            tempList.append((item[1] * item[2]) + (item[1] * item[2]) * (item[3] / 100))
            total = total + (item[1] * item[2]) + (item[1] * item[2]) * (item[3] / 100)
            items.append(tempList)

        order[0]["date"] = order[0]["created_at"].strftime("%m/%d/%Y")
        order[0]["time"] = order[0]["created_at"].strftime("%H:%M:%S")
        order[0]["orderSeller__signature"] = "http://" + request.META['HTTP_HOST'] + "/media/" + order[0][
            "orderSeller__signature"]
        order[0]["logo"] = "http://" + request.META['HTTP_HOST'] + static('img/logo.jpg')
        order[0]["itemList"] = items
        order[0]["total"] = total
        data = order[0]

        pdf = render_to_pdf('invoiceTemplate.html', data)
        if pdf:
            response = HttpResponse(pdf, content_type='application/pdf')
            filename = "Invoice_%s.pdf" % (orderId)
            content = "attachment; filename= %s" % (filename)
            response['Content-Disposition'] = content
            return response
