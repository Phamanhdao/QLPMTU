# Generated by Django 3.2.10 on 2021-12-28 12:32

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('phongmach', '0021_remove_medical_examination_active'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bill',
            name='medical_expenses',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='expenses', to='phongmach.medical_expenses'),
        ),
    ]
