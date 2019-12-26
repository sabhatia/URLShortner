# File to build a docker image for URL Shortner application

FROM python:alpine3.7
RUN mkdir -p ./app
COPY GitTest.py ./app
COPY chinook.db ./app
COPY requirements.txt ./app
WORKDIR /app

RUN pip install -r requirements.txt
EXPOSE 5002 
CMD python ./GitTest.py
