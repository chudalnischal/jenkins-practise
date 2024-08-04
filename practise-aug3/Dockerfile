FROM ubuntu:latest  
# i am pulling an ubuntu image for running python file in a container


RUN mkdir apps 
# creating an directory to store the content

WORKDIR /home/apps
# making it the working directory

COPY C:\Users\chuda\Desktop\Git Demo\jenkins-practise\practise-aug3 /home/apps/
# copying everything from the source directory 


RUN pip install -r requirements.txt
# installing the requirements

CMD [ "python", "app.py" ]
# running thr python app
