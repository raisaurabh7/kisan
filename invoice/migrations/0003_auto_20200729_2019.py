# Generated by Django 3.0.1 on 2020-07-29 14:49

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('invoice', '0002_auto_20200729_2018'),
    ]

    operations = [
        migrations.RenameField(
            model_name='orders',
            old_name='order-buyer',
            new_name='orderBuyer',
        ),
    ]
