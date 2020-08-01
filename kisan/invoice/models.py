from django.db import models
from django.core.exceptions import ValidationError
import os
from uuid import uuid4
from django.utils.safestring import mark_safe


# Create your models here.


def validate_signature_image(fieldfile_obj):
    filesize = fieldfile_obj.file.size
    megabyte_limit = 1.0

    if filesize > megabyte_limit * 1024 * 1024:
        raise ValidationError("Max file size is %sMB" % str(megabyte_limit))


def path_and_rename_signature(instance, filename):
    upload_to = 'signature/'
    ext = filename.split('.')[-1]
    filename = '{}.{}'.format(uuid4().hex, ext)
    return os.path.join(upload_to, filename)


class Sellers(models.Model):
    name = models.CharField(max_length=30, default=None)
    address = models.CharField(max_length=100, default=None)
    signature = models.ImageField(upload_to=path_and_rename_signature, max_length=30,
                                  validators=[validate_signature_image], help_text='Maximum file size allowed is 2Mb')


class Buyers(models.Model):
    name = models.CharField(max_length=30, default=None)
    address = models.CharField(max_length=100, default=None)


class Items(models.Model):
    seller = models.ForeignKey(Sellers, name='itemSeller', on_delete = models.CASCADE)
    name = models.CharField(max_length=200, default=None)
    quantity = models.IntegerField(default=0)
    tex = models.IntegerField(default=0)
    price = models.IntegerField(default=0)


class Orders(models.Model):
    orderSeller = models.ForeignKey(Sellers, on_delete=models.PROTECT)
    orderBuyer = models.ForeignKey(Buyers,  on_delete=models.PROTECT)
    created_at = models.DateTimeField(auto_created=True)


class OrderItems(models.Model):
    order = models.ForeignKey(Items, name="orderItemsSeller", on_delete=models.PROTECT)
    item = models.ForeignKey(Orders, name="orderItem", on_delete=models.PROTECT)
    quantity = models.IntegerField(default=0)
