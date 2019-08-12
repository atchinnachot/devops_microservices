FROM python:3.7.3-stretch

# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y \
    python-pip \
    python-dev \
    vim \
    curl \
    net-tools --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory

# COPY ./requirements.txt /app/requirements.txt
COPY ./model_data/*.* /app/model_data/
COPY ./app.py /app/app.py
COPY ./requirements.txt /app/requirements.txt


## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
ENV [ "python" ]
CMD [ "python", "app.py"]
