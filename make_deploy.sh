#!/bin/bash
mkdir -p build
rm -rf build/* || True
cp -R app/* build
python3 -m pip install -t build -r requirements.txt
rm -rm app.zip || True
zip -r app.zip app/*
