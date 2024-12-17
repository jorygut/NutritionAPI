#!/usr/bin/env bash

# Update package list
apt-get update

# Install Tesseract OCR and its dependencies
apt-get install -y tesseract-ocr libtesseract-dev

# Install Python dependencies
pip install -r requirements.txt
