#!/bin/bash

# Define your project name
PROJECT_NAME="wormholenavigator"

# Create the main project directory
mkdir $PROJECT_NAME
cd $PROJECT_NAME

# Create a virtual environment
python3 -m venv venv
# Activate it (this command varies depending on your OS/shell)
source venv/bin/activate

# Create directories for a basic project
mkdir -p src static templates tests

# Create main Python file
touch src/main.py

# Create a basic HTML template file
echo "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><title>$PROJECT_NAME</title></head><body><h1>Welcome to $PROJECT_NAME</h1></body></html>" > templates/index.html

# Create a basic CSS file
echo "body { font-family: Arial, sans-serif; }" > static/style.css

# Create a basic JavaScript file
echo "console.log('Welcome to $PROJECT_NAME');" > static/script.js

# Create the README.md file
echo "# $PROJECT_NAME\n\nThis is a full-stack web application." > README.md

# Create the .gitignore file
echo "venv/\n__pycache__/\n*.pyc" > .gitignore

# Create requirements.txt file
touch requirements.txt

# Create a basic test file
echo "import unittest\n\nclass BasicTests(unittest.TestCase):\n    def test_simple(self):\n        self.assertTrue(True)\n\nif __name__ == '__main__':\n    unittest.main()" > tests/test_basic.py

# Initialize the git repository
git init
git add .
git commit -m "Initial commit with basic project structure"
