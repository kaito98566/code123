import sys
from os.path import abspath
from os.path import dirname

sys.path.insert(0,abspath(dirname(__file__)))

import main

application = main.app
