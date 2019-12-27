FROM python:3

ENV PYTHONUNBUFFERED 1
ENV PORT 8000

RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY manage.py /code/
COPY bblogs /code/bblogs
COPY web /code/web

CMD python manage.py runserver 0.0.0.0:$PORT
