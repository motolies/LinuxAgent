from subprocess import check_output

from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    return 'hello world'


@app.route('/reload')
def nginx_reload():
    # https://stackoverflow.com/questions/53380988/how-to-execute-shell-script-from-flask-app
    stdout = check_output(['./shell/reload.sh']).decode('utf-8')
    return '<pre>' + stdout + '</pre>'


if __name__ == '__main__':
    app.run()
