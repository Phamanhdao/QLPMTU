import setuptools.archive_util
from rest_framework.serializers import ModelSerializer
from .models import Medicine, User,  Medical_Examination, Bill, Prescription, Prescription_Detail, Category

class BillSerializer(ModelSerializer):
    class Meta:
        model = Bill
        fields = ["id", "medical_expenses", "prescription", "total"]

class PrescriptionDetailSerializer(ModelSerializer):
    class Meta:
        model = Prescription_Detail
        fields = ["id", "name_medicine", "unit", "quantity", "prescription"]

class PrescriptionSerializer(ModelSerializer):
    class Meta:
        model = Prescription
        fields = ["id", "patient", "diagnose"]


class MedicalExaminationSerializer(ModelSerializer):
    class Meta:
        model = Medical_Examination
        fields = ["id", "subject", "register_date"]


class MedicineSerializer(ModelSerializer):
    class Meta:
        model = Medicine
        fields = ["id", "name", "category"]

class CategorySerializer(ModelSerializer):
    class Meta:
        model = Category
        fields = ["id", "name"]

class UserSerilizer(ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'email', 'username', 'password', 'avatar', 'user_role']
        extra_kwargs = {
            'password': {'write_only': 'true'},
            'user_role': {'write_only': 'true'}
        }
    def create(self, validated_data):
        user = User(**validated_data)
        user.set_password(validated_data['password'])
        user.save()

        return user