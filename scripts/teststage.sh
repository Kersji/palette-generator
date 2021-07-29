#!/bin/bash

source venv/bin/activate
# python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml --cov-report=term-missing
# python3 -m pytest --cov=application --junitxml=junit/test-results.xml --cov-report=xml --cov-report=html
python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml --cov-report=html