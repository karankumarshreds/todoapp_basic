FROM python:3.7

ADD . /app

WORKDIR /app

COPY ./requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 8001

CMD gunicorn todo_app.wsgi:application --bind=0.0.0.0:8001
