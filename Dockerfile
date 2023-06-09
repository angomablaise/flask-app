# our base image
FROM alpine:latest
WORKDIR /app
COPY . .
RUN pip install /app/requirements.txt

# tell the port number the container should expose
EXPOSE 5000

# run the application
CMD ["python", "/app/app.py"]
