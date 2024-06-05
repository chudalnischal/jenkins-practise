FROM python:latest

WORKDIR /home/python

COPY ./requirements.txt  /home/python

RUN pip install -r requirements.txt

COPY . /home/python


CMD [ "python"," main.py" ]
