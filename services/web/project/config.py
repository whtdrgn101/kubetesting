import os

basedir = os.path.abspath(os.path.dirname(__file__))

class Config(object):
    BASE_DIR = f"{os.getenv('APP_FOLDER')}"