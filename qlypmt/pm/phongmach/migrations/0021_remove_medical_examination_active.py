# Generated by Django 3.2.10 on 2021-12-28 12:29

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('phongmach', '0020_alter_prescription_detail_name_medicine'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='medical_examination',
            name='active',
        ),
    ]
