FROM UBUNTU

#Set work directory
WORKDIR /app

#Copy the requirement and the source code
COPY requirements.txt /app
COPY devops /app/

#Update system and install dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip &&\
    pip install -r requirement.txt &&\
    cd devops

#Define Entrypoint
ENTRYPOINT [ "python3" ]

#Command
CMD [ "manage.py", "runserver", "0.0.0.0:8000" ]
