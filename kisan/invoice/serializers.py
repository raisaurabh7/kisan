from rest_framework import serializers


class OrdersSerializer(serializers.Serializer):
    id = serializers.IntegerField()
    orderSeller__name = serializers.CharField()
    orderSeller__address = serializers.CharField()
    orderBuyer__name = serializers.CharField()
    orderBuyer__name = serializers.CharField()
    created_at = serializers.CharField()
    items = serializers.JSONField()
    total = serializers.FloatField()

    # name = serializers.CharField()
    class Meta:
        fields = ['id', 'orderSeller__name']




