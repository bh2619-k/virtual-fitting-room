FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt ./
COPY .env ./
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "run.py"]
