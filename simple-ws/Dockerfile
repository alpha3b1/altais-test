from python:alpine

WORKDIR /usr/app

COPY . /usr/app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "./app.py"]