from flask import Flask

app = Flask(__name__)


@app.route('/home')
def home():
    return " <p> this is my home page for my webapp </p> "


@app.route('/page')
def page():
    return "<p> this is my personal page for blog </p>"


if (__name__) == "__main__":
    app.run(debug=True, port=50500)
