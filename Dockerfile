FROM python:3.8-slim
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["gunicorn","-b","0.0.0.0:5000", "main:app","-w","4"]