FROM ubuntu:latest  
# i am pulling an ubuntu image for running python file in a container

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv


RUN mkdir /home/apps 
# creating an directory to store the content

WORKDIR /home/apps
# making it the working directory

COPY . /home/apps/
# copying everything from the source directory 

RUN python3 -m venv venv

# Activate the virtual environment and install Python packages
RUN venv/bin/pip install --upgrade pip
RUN venv/bin/pip install -r requirements.txt

# Set the environment variable to use the virtual environment
ENV PATH="/home/apps/venv/bin:$PATH"



RUN pip3 install -r requirements.txt
EXPOSE 50500

# installing the requirements

CMD [ "python", "app.py" ]
# running thr python app
