FROM ubuntu:latest

RUN mkdir /app
RUN apt-get update -y
RUN apt-get install -y python-dev python-pip
RUN pip install flask
RUN pip install dateparser
RUN pip install rfc3339
ADD flask_datetime_parser.py /app/flask_datetime_parser.py

WORKDIR /app

EXPOSE 5000
ENV FLASK_APP flask_datetime_parser.py
ENTRYPOINT ["flask"]
CMD ["run", "--host=0.0.0.0"]
