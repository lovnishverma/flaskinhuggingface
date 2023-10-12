from flask import Flask, request, jsonify, render_template
from flask_cors import CORS

app = Flask(__name__)
app.static_folder = 'static'
app.static_url_path = '/static'

app.secret_key = "flask-nielit-2023"

CORS(app)

@app.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)