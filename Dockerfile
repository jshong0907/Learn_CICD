FROM python:3.9.7-slim

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "manage.py", "runserver", "0:8000"]

EXPOSE 8000