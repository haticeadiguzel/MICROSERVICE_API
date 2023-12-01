# syntax=docker/dockerfile:1
FROM python:3

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . /app

# RUN pip install /app/MODELS/dist/models-0.0.1.tar.gz

# RUN git clone https://github.com/haticeadiguzel/MODELS.git

# RUN sudo python /app/MODELS/setup.py install

COPY . .

CMD [ "python", "api.py" ]