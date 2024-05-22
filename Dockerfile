# Usa la imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requisitos en el directorio de trabajo
COPY requirements.txt requirements.txt

# Instala las dependencias
RUN pip install -r requirements.txt

# Copia el contenido de la aplicación en el directorio de trabajo
COPY src/ .

# Expone el puerto en el que la aplicación va a correr
EXPOSE 8080

# Define el comando de arranque para correr la aplicación
CMD ["python", "app.py"]
