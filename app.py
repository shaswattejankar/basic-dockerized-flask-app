from flask import Flask

app = Flask(__name__)
@app.route('/')
def hello():
    return '<h1>Hello Everyone!</h1><br><h2>This is a simple flask app to Dockerize and Deploy on EC2.</h2>'
if __name__ == '__main__':
    app.run(debug=True)