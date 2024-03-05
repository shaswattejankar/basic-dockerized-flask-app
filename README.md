# basic-dockerized-flask-app


### LOCALLY (in your created directory)
```
python -m venv .env
```
### IN VSCODE
```
.\.env\Scripts\Activate.ps1
pip install flask
pip freeze > requirements.txt
python .\app.py
python3 -m flask run --host=0.0.0.0
flask --app app run
```
### TO DOCKERIZE (in root directory)
```
docker build -t  buildname . 
docker login 
docker tag buildname <docker-hub-username>/buildname
docker push <docker-hub-username>/buildname
```
### AFTER CONNECTING TO EC2 
```
yum update
yum install -y docker
docker login
docker pull <docker-hub-username>/buildname
docker run -p 5000:5000 -d <docker-hub-username>/buildname
```
