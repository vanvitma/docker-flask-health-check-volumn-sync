FROM python:3.6-alpine

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

RUN apk --no-cache add curl

CMD ["python3", "app.py"]

# HEALTHCHECK --interval=5s --timeout=5s --retries=1 CMD curl -f http://localhost:5000/ || exit 1