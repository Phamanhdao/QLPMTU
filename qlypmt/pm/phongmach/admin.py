from django.contrib import admin
from django.template.response import TemplateResponse
from django.utils.safestring import mark_safe
from django.urls import path
from .models import Category, Medicine, User, Duty, Duty_Details,  Medical_Examination, Bill, Prescription, Prescription_Detail
# Register your models here.


class MedicineAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "unit_price_medicine", "active", "category"]
    search_fields = ["name", "category__name"]

class UserInline(admin.TabularInline):
    model = Duty
    pk_name = 'staff'

class UserAdmin(admin.ModelAdmin):
    list_display = ["id", "first_name", "last_name", "user_role"]
    search_fields = ["first_name", "user_role__role"]
    inlines = (UserInline, )

class DutyDetailsAdnmin(admin.ModelAdmin):
    list_filter = ["duty_day"]
    list_display = ["duty_day", "duty"]

class DutyInline(admin.TabularInline):
    model = Duty_Details
    pk_name ='duty'

class DutyAdmin(admin.ModelAdmin):
    search_fields = ["name"]
    inlines = (DutyInline,)

class CategoryInline(admin.TabularInline):
    model = Medicine
    pk_name ='category'

class CategoryAdmin(admin.ModelAdmin):
    search_fields = ["name"]
    inlines = (CategoryInline, )

#  Điều chỉnh url
class MedicalAdminSite(admin.AdminSite):
    site_header = 'HỆ THỐNG QUẢN LÝ PHÒNG MẠCH OCT'

    def get_urls(self):
        return [
            path('medical_stats/', self.medical_stats)
        ] + super().get_urls()

    def medical_stats(self, request):
        medicine_count = Medicine.objects.count()
        return TemplateResponse(request, 'admin/medical_stats.html', {
            'medicine_count': medicine_count
        })

    # def donthuoc_stats(self, request):
    #     donthuoc_count = Prescription.objects.count()
    #     return TemplateResponse(request, 'admin/medical_stats.html', {
    #         'donthuoc_count': donthuoc_count
    #     })

admin_site = MedicalAdminSite('medical')

admin_site.register(Category, CategoryAdmin)
admin_site.register(Medicine, MedicineAdmin)
admin_site.register(User, UserAdmin)
admin_site.register(Duty, DutyAdmin)
admin_site.register(Duty_Details, DutyDetailsAdnmin)
# test tạo mới phiếu khám bệnh, đơn thuốc, chi tiết đơn thuốc, hóa đơn
# admin_site.register(Medical_Examination)
# admin_site.register(Bill)
# admin_site.register(Prescription)
# admin_site.register(Prescription_Detail)
