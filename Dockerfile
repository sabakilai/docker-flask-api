# FROM alpine:latest

# RUN apk add --no-cache python3-dev \
#     && pip3 install --upgrade pip

# WORKDIR /app

# COPY . /app

# RUN pip3 --no-cache-dir install -r requirements.txt

# EXPOSE 5000

# CMD ["python3", "app.py"]

FROM python

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY src/ .

CMD ["python3", "./app.py"]
