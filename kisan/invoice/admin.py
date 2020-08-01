from django.contrib import admin
from .models import Sellers, Buyers, Orders, OrderItems, Items
# Register your models here.


admin.site.register(Sellers)
admin.site.register(Buyers)
admin.site.register(Items)
admin.site.register(Orders)
admin.site.register(OrderItems)
