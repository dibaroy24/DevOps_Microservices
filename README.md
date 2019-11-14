<include a CircleCI status badge, here>

## Operationalizing a Machine Learning Microservice API

## Project Overview

The purpose of this project is to apply DevOps practises to operationalize machine learning model/algorithm through a Flask based web service program.

Using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston. The data was taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The goal of the project is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Files in the repository

app.py : The python flask app

Makefile : A file used to setup and build the project - mainly used for linting the dockerfile.

Dockerfile : A file that contains instructions to bild a docker image.

make_prediction.sh : A script to run a query against the machine learning API running on port 8000.

make_prediction_k8s.sh : A script to run a query against the machine learning API running on port 8086 for Kubernetes.

requirements.txt : A file that describes the dependencies required by the python application running on the docker container.

run_docker.sh : A script to build, tag and run a docker image

run_kubernetes.sh : A script to download a docker image from the docker hub and run this image locally on kubernetes.

upload_docker.sh: A script to push/upload a docker image to the docker hub.

model_data : A folder containing the machine learning model and associated files.

output_txt_files : A folder containing the required text files - docker_out.txt and kubernetes_out.txt