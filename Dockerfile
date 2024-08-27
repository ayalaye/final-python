FROM python:3.9
MAINTAINER SarahAyala
WORKDIR /src/app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENV QA=SarahAyala
EXPOSE 5000
ENTRYPOINT [ "python", "app.py" ]
