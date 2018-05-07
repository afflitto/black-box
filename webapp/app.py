from flask import Flask, render_template
import os

app = Flask(__name__, static_folder="images")

@app.route('/')
def index():
    images = os.listdir(os.path.join(app.root_path,"images/original"))
    return render_template('index.html', images=images)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
