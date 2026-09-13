FROM python:3.9

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80
#CMD [ "python", "./main.py" ]
#CMD [ "fastapi", "dev", "main.py", "--port", "80" ]
#CMD [ "fastapi", "run", "main.py", "--port", "80" ]
CMD ["python", "-m", "fastapi_cli", "dev", "main.py", "--host", "0.0.0.0", "--port", "80"]
#CMD ["fastapi", "dev", "main.py", "--host", "0.0.0.0", "--port", "80"]