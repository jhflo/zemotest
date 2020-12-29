FROM tiangolo/uwsgi-nginx-flask:python3.6

COPY requirements.txt /tmp/


# upgrade pip and install required python packages
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt


COPY ./app /app

RUN apt-get update & apt-get upgrade
RUN echo 'America/Bogota' | tee /etc/timezone && dpkg-reconfigure -f noninteractive tzdata