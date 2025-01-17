
FROM python:3.9-slim


WORKDIR /app


COPY webapp/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


COPY webapp/ /app


EXPOSE 5000


CMD ["python", "app.py"]
