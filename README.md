# Flask-App

Python Flask App for Get SH>IT Done


## Build Container
```bash
docker build -t flask .
```


## Run Container from GitPod
```bash
docker run --rm -d -p44444:80 flask
```


## Run Container from Docker
```bash
docker run --rm -d -p80:80 flask
```


## Run Container from Python
```bash
python main.py
```


## Main Flask Elements
There is a `main.py` Python file that exposes the application and its variables:
```python
from flask import Flask, request, render_template
import os

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
  return render_template("index.html")

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)
```

This piece of code is stored in our `main.py`:
* Line 1-2: here we are importing the Flask module and creating a Flask web server from the Flask module
* Line 4: `__name__` means this current file. In this case, it will be main.py. This current file will represent the web application. We are creating an instance of the Flask class and calling it app. Here we are creating a new web application
* Line 6: it represents the default page or mounting point
* Line 7–8: when the user goes to the website and they go to the default page (nothing after the slash), then the function below will get activated by rendering a template called `index.html`
* Line 10: when we run our Python script, Python assigns the name `__main__` to the script when executed
* Line 11: this is optional and describes which IP and port will be used by the Flask application

Some of the key commands are:
* `app.route(“/”)` - adds more routes to the path with more files
```python
@app.route("/home")
def home():
    return "Hello, World!"
    
@app.route("/julibcn")
def julibcn():
    return "Hello, JuliBCN"
```
* `templates` - the Flask Framework looks for HTML files in a folder called `templates`. We need to create a templates folder and put all HTML files in there
* `render_template()` - we import `render_template()` method from the flask framework. `render_template()` looks for a template (HTML file) in the `templates` folder.
* `static` - in the same way as we created a folder called `templates` to store all our HTML templates, we need a folder called `static`. In `static`, we will store our CSS, JavaScript, images, and other necessary files. That is why it is important to create a CSS folder to store stylesheets
