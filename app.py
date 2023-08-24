from flask import Flask, render_template, jsonify

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/get_data")
def get_data():
    data = {"message": "Data retrieved from the server using Python!"}
    return jsonify(data)

if __name__ == "__main__":
    app.run(debug=True)
