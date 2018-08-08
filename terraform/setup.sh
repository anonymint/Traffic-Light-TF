#!/bin/bash
# Run this if it's your first time on this instance/machine 
# 
# Let say you have tensorflow already or else
# 	pip install tensorflow==1.4
# 

sudo apt-get install protobuf-compiler python-pil python-lxml python-tk
mkdir /tensorflow_model
cd /tensorflow_model

# clone tensorflow code here
git clone https://github.com/tensorflow/models.git
# this is to make sure it's for version tensor 1.4 current master i believe for tf 1.9
git checkout f7e99c0 

cd research

# all of these setup is same as mentioned in tensorflow codebase installation.md
# setup protoc 

protoc object_detection/protos/*.proto --python_out=.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# verify it's looking good

python object_detection/builders/model_builder_test.py