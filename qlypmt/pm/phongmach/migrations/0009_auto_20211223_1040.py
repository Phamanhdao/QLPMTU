# Generated by Django 3.2.10 on 2021-12-23 03:40

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('phongmach', '0008_auto_20211223_1035'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='user_role',
            field=models.TextField(default=None),
        ),
        migrations.RemoveField(
            model_name='duty',
            name='staff',
        ),
        migrations.AddField(
            model_name='duty',
            name='staff',
            field=models.ManyToManyField(blank=True, null=True, to=settings.AUTH_USER_MODEL),
        ),
    ]
