from django.shortcuts import render
from django.http import HttpResponse
import os


# Create your views here.
def index(request):
    KEY_WORLD=os.getenv('KEY_WORLD')
    response_text=f"Hola mundo, {KEY_WORLD}"
    return HttpResponse(response_text)
