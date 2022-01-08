# Generated by Django 3.2.10 on 2021-12-28 13:43

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('phongmach', '0034_delete_case_record'),
    ]

    operations = [
        migrations.CreateModel(
            name='Prescription',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('diagnose', models.CharField(default=None, max_length=100)),
                ('created_date', models.DateTimeField(auto_now_add=True)),
                ('patient', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Prescription_Detail',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('unit', models.CharField(max_length=100)),
                ('quantity', models.IntegerField(default=None)),
                ('unit_price', models.FloatField(default=None)),
                ('name_medicine', models.ManyToManyField(to='phongmach.Medicine')),
                ('prescription', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='phongmach.prescription')),
            ],
        ),
        migrations.CreateModel(
            name='Bill',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_date', models.DateTimeField(auto_now_add=True)),
                ('total', models.FloatField(default='0')),
                ('paid', models.BooleanField(default=False)),
                ('medical_expenses', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='expenses', to='phongmach.medical_expenses')),
                ('prescription', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='prescription', to='phongmach.prescription')),
            ],
        ),
    ]
