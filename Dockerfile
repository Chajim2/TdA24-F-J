# syntax=docker/dockerfile:1

FROM python:3.10-buster

WORKDIR /TdA24

RUN pip install pipenv

COPY Pipfile .
COPY Pipfile.lock .

RUN pipenv install --system --deploy

COPY . .

EXPOSE 80

CMD ["./start.sh"]