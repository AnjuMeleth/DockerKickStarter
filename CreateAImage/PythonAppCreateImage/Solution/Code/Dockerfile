FROM ubuntu

RUN apt-get update
RUN apt-get install -y python python-pip
RUN pip install flask

COPY web.py /opt/web.py

ENTRYPOINT FLASK_APP=/opt/web.py flask run --host=0.0.0.0
