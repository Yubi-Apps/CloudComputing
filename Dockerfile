# Gunakan image Python resmi
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy seluruh kode aplikasi
COPY . .


# Perintah untuk menjalankan aplikasi
# CMD ["gunicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
# CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8080"]
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
