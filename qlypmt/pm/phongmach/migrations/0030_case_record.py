# Generated by Django 3.2.10 on 2021-12-28 13:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('phongmach', '0029_prescription_created_date'),
    ]

    operations = [
        migrations.CreateModel(
            name='Case_Record',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('diagnose', models.CharField(default=None, max_length=100)),
            ],
        ),
    ]
