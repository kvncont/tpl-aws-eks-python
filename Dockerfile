# Usa una imagen base oficial de Python 3.12
FROM python:3.12-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requerimientos
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de la aplicación
COPY . .

# Expone el puerto 80 para la aplicación
EXPOSE 80

# Comando para ejecutar la aplicación usando el CLI de FastAPI
CMD ["fastapi", "run", "app/main.py" , "--host", "0.0.0.0", "--port", "80"]