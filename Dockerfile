FROM python:latest
WORKDIR /app
COPY . . 
EXPOSE 8080
RUN pip install -r requirements.txt 
ENTRYPOINT  ["python", "lbg.py"] 
