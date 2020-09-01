from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "Hello from Flask WebApp! \n\
            This Site Created By Yousef Aminian"

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
