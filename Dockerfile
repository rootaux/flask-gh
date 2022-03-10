FROM python:3.8.2-alpine

COPY ./requirements.txt /app/requirements.txt
COPY ./app.py /app
WORKDIR /app

RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python3", "app.py"]

