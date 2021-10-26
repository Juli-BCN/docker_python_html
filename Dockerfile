# Partimos de una base oficial de python
FROM python:3.8-slim-buster

# El directorio de trabajo es desde donde se ejecuta el contenedor al iniciarse
WORKDIR /app

# Copiamos todos los archivos del build context al directorio /app del contenedor
COPY src/ /app

# Ejecutamos pip para instalar las dependencias en el contenedor
RUN pip install --trusted-host pypi.python.org -r reqs.txt

# Indicamos que este contenedor se comunica por el puerto 80/tcp
EXPOSE 80

# Declaramos una variable de entorno
ENV NAME Get_IT_Python_App

# Ejecuta nuestra aplicación cuando se inicia el contenedor
CMD ["python", "main.py"]
