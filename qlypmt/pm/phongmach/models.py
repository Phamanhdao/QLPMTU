from django.db import models
from django.contrib.auth.models import AbstractUser
from jinja2.runtime import Macro


class User(AbstractUser):
    avatar = models.ImageField(upload_to='uploads/%Y/%m', null=True, default=None)
    user_role = models.ForeignKey('User_Role', on_delete=models.SET_NULL, null=True, default='1')



    # detail_user = models.ForeignKey('Information_Staff', on_delete=models.SET_NULL(), null=True)
    # def __str__(self):
    #     return self.user_role
# class Detail_User(models.Model):
#     position = models.TextField(max_length=50)
#
#     def __str__(self):
#         return self.position

# Loại user
class User_Role(models.Model):
    role = models.TextField(default=None)
    def __str__(self):
        return self.role

# Danh mục thuốc
class Category(models.Model):
    name = models.CharField(max_length=50, null=False, unique=True)

    def __str__(self):
        return self.name

# Thuốc
class Medicine(models.Model):
    name = models.CharField(max_length=100, null=False, unique=True)
    unit_price_medicine = models.FloatField(default=None)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)
    category = models.ForeignKey(Category, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.name


# Lịch trực
class Duty(models.Model):
    name = models.CharField(max_length=100, null=False, default=None)
    staff = models.ForeignKey(User, on_delete=models.SET_NULL, null= True)
    # def __getitem__(self, item):
    #     item = (User.user_role('3'), User.user_role('2'))
    #     staff = item
    #     return staff
    def __str__(self):
        return self.staff.last_name + " " + self.staff.first_name

# chi tiết lịch trực
class Duty_Details(models.Model):
    duty_day = models.DateField(default=None)
    duty = models.ForeignKey(Duty, on_delete=models.CASCADE, default=None)
    def __str__(self):
        return self.duty.name


# Phiếu khám bệnh
class Medical_Examination(models.Model):
    confirm = models.BooleanField(default=False)
    register_date = models.DateField(default=None)
    patient = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    subject = models.CharField(max_length=255, null=True)

    def __str__(self):
        return self.patient.last_name + " " + self.patient.first_name

 # Bảng giá khám bệnh
class Medical_Expenses(models.Model):
    name = models.CharField(max_length=100, null=False, unique=True)
    unit_price = models.FloatField(default=None)

# Hóa đơn
class Bill(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    medical_expenses = models.ForeignKey(Medical_Expenses, on_delete=models.SET_NULL, related_name='expenses', null=True)
    prescription = models.ForeignKey('Prescription', on_delete=models.SET_NULL, related_name='prescription', null=True)
    total = models.FloatField(default='0')
    # Đã thanh toán
    paid = models.BooleanField(default=False)

# Đơn thuốc
class Prescription(models.Model):
    patient = models.patient = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    # Chẩn đoán
    diagnose = models.CharField(max_length=100, null=False, default=None)
    created_date = models.DateTimeField(auto_now_add=True)

# Chi tiết đơn thuốc
class Prescription_Detail(models.Model):
    name_medicine = models.ManyToManyField(Medicine)
    unit = models.CharField(max_length=100, null=False)
    quantity = models.IntegerField(default=None)
    prescription = models.ForeignKey(Prescription, on_delete=models.SET_NULL, null=True)