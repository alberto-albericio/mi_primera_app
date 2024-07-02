# Usa una imagen base oficial de Python
FROM python:3.12.3-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /Documentos/PrimeraApp/app

# Copia el archivo de requisitos y el archivo de configuración del entorno al contenedor
COPY requirements.txt .


# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt gunicorn

# Copia el contenido de tu proyecto al contenedor
COPY . .

# Expone el puerto en el que la aplicación correrá
EXPOSE 8000



# Comando para ejecutar la aplicación
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app.wsgi:application"]

while sleep 60; do	
	echo "One of the processes has already exited."
