# Menggunakan base image Python 3.9
FROM python:3.9

# Mengatur direktori kerja ke /code
WORKDIR /code

# Menyalin requirements.txt ke /code
COPY ./requirements.txt /code/requirements.txt

# Menginstal dependensi dari requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Menyalin seluruh konten proyek Anda ke /code
COPY . /code

# CMD untuk menjalankan Gunicorn
CMD ["gunicorn", "main:app", "-b", "0.0.0.0:7860"]