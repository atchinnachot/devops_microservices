[![CircleCI](https://circleci.com/gh/atchinnachot/devops_microservices.svg?style=svg)](https://circleci.com/gh/atchinnachot/devops_microservices)

## Project Overview

This project provides three ways to operationalize a Machine Learning Microservice API. The standalone, and the containerized both in Docker, and Kerbernetes.

This API uses Flask framework and a given pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The data was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).


## Setup the Environment to run `app.py`


### Standalone:  `python app.py`

1. Clone the project repository, and navigate to the project folder.

```
git clone https://github.com/atchinnachot/devops_microservices.git
cd devops_microservices
```

2. Create (and activate) a new environment, named `.devops` with Python 3. If prompted to proceed with the install `(Proceed [y]/n)` type y.

```
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

3. Install dependencies. `make install`


### Run in the Docker

1. Make sure the docker is running, use `docker --version` to verify if the docker is installed. Otherwise, To install the latest version of docker, choose the Community Edition (CE) for your operating system, [on docker’s installation site](https://docs.docker.com/v17.12/install/). It is also recommended that you install the latest, **stable** release:

2. To run API in Docker:  `./run_docker.sh`


### Run in Kubernetes:

**Install Minikube**
To run a Kubernetes cluster locally, for testing and project purposes, you need the Kubernetes package, Minikube. This operates in a virtual machine and so you'll need to download two things: A virtual machine (aka a hypervisor) then minikube. Thorough installation instructions can be found here. Here is how I installed minikube:

1. Install VirtualBox:

**For Mac:**

```
brew cask install virtualbox
```

2. Install minikube:

**For Mac:**

```
brew cask install minikube
```

3. To run API in Kubernetes: `./run_kubernetes.sh`


## Making Predictions

To make a prediction, open a **separate tab or termal window**. In this new window, navigate to the main project directory (some computers will do this automatically) and call `./make_prediction.sh`.