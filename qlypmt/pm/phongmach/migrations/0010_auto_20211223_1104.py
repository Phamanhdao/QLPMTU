# Generated by Django 3.2.10 on 2021-12-23 04:04

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('phongmach', '0009_auto_20211223_1040'),
    ]

    operations = [
        migrations.CreateModel(
            name='User_Role',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('role', models.TextField(default=None)),
            ],
        ),
        migrations.AlterField(
            model_name='user',
            name='user_role',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='phongmach.user_role'),
        ),
    ]
