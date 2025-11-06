FROM python:3.10

WORKDIR /app

COPY factory_erp_starter.zip /app/
RUN apt-get update && apt-get install -y unzip
RUN unzip factory_erp_starter.zip -d /app && rm factory_erp_starter.zip

RUN pip install --no-cache-dir -r requirements.txt || true

EXPOSE 8000
CMD ["python", "main.py"]
