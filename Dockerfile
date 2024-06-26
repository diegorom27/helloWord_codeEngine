# Usa la imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requisitos en el directorio de trabajo
COPY myproyect/requirements.txt requirements.txt

# Instala las dependencias
RUN pip install -r requirements.txt

# Lista los archivos en el directorio de trabajo (para depuración)
RUN ls -la /app

# Copia el contenido de la aplicación en el directorio de trabajo
COPY myproyect/src .

# Lista los archivos en el directorio de trabajo nuevamente (para depuración)
RUN ls -la /app

# Expone el puerto en el que la aplicación va a correr
EXPOSE 8080

# Define el comando de arranque para correr la aplicación
CMD ["python", "app.py"]
