from django.shortcuts import render
from django.http import  HttpResponse
from rest_framework import viewsets, permissions, generics, status
from rest_framework.views import APIView

from .models import Medicine, User, Medical_Examination, Category
from .serializers import  UserSerilizer, MedicalExaminationSerializer, MedicineSerializer, CategorySerializer
from rest_framework.parsers import MultiPartParser
from rest_framework.response import Response
from rest_framework.decorators import action
from django.conf import settings


class CategoryViewSet(viewsets.ViewSet,generics.ListAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer

class MedicineViewSet(viewsets.ViewSet, generics.ListAPIView):
    serializer_class = MedicineSerializer

    def get_queryset(self):
        medicine = Medicine.objects.filter(active=True)

        q = self.request.query_params.get('q')
        if q is not None:
            medicine = medicine.filter(name__icontains=q)

        cate_id = self.request.query_params.get('category_id')
        if cate_id is not None:
            medicine=medicine.filter(category_id=cate_id)

        return medicine


class MedicalExaminationViewSet(viewsets.ViewSet,
                                generics.ListAPIView,
                                generics.DestroyAPIView):
    queryset = Medical_Examination.objects.filter(confirm=True)
    serializer_class = MedicalExaminationSerializer
    permission_classes = [permissions.IsAuthenticated]

    # def destroy(self, request, *args, **kwargs):
    #     if request.user == self.get_object().patient:
    #         return super().destroy(request, *args, **kwargs)
    #     return Response(status=status.HTTP_403_FORBIDDEN)

    # def get_queryset(self):
    #     examination = Medical_Examination.objects.filter(confirm=False)
    #     return examination



class UserViewSet(viewsets.ViewSet,
                  generics.CreateAPIView, generics.UpdateAPIView):
    queryset = User.objects.filter(is_active=True)
    serializer_class = UserSerilizer
    parser_classes = [MultiPartParser, ]

    def get_permissions(self):
        if self.action == 'current_user':
            return [permissions.IsAuthenticated()]
        return [permissions.AllowAny()]

    def get_permissions(self):
        if self.action == 'add_examination':
            return [permissions.IsAuthenticated()]
        return [permissions.AllowAny()]

    @action(methods=['get'], detail=False, url_path='current_user')
    def current_user(self, request):
        return Response(self.serializer_class(request.user).data, status=status.HTTP_200_OK)
    # Add phiếu khám bệnh mới
    @action(methods=['post'], detail=True, url_path="add_examination")
    def add_examination(self, request, pk):
        subject = request.data.get('subject')
        register_date = request.data.get('register_date')
        if subject:
            s = Medical_Examination.objects.create(subject=subject, register_date=register_date,
                                                   patient=request.user)
            return Response(MedicalExaminationSerializer(s).data,
                            status=status.HTTP_201_CREATED)
        return Response(status=status.HTTP_400_BAD_REQUEST)



class AuthInfo(APIView):
    def get(self, request):
        return Response(settings.OAUTH2_INFO, status=status.HTTP_200_OK)

# class CategoryViewSet(viewsets.ModelViewSet, generics.ListAPIView):
#     queryset = Category.objects.filter(active=True)
#     serializer_class = CategorySerializer
#     permission_classes = [permissions.IsAuthenticated]
#
#     @action(methods=['get'], detail=True, url_path='category')
#     def get_Medicine(self, request, pk):
#         category = Category.objects.get(pk=pk)
#         medicine = category.set_medicine.filter(active=True)
#
#         return Response(MedicineSerializer(medicine, many=True).data,
#                         status=status.HTTP_200_OK)

def index(request):
    return HttpResponse("hi")

# class DutyViewSet(viewsets.ModelViewSet):
#     queryset = User.objects.filter(user_role='2')