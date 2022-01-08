from django.urls import path, include
from . import  views
from rest_framework.routers import DefaultRouter
from .admin import admin_site

router = DefaultRouter()
# router.register('medicine', views.MedicineViewSet)
router.register("users", views.UserViewSet, 'user')
router.register("medical_examinations", views.MedicalExaminationViewSet, 'medical_examination')
router.register("medicines", views.MedicineViewSet, 'medicine')


urlpatterns = [
    path('', include(router.urls)),
    path('admin/', admin_site.urls),
    path('oauth2-info/', views.AuthInfo.as_view())
]