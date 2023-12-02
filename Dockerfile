FROM tensorflow/tensorflow:latest-gpu-jupyter

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# build
# sudo docker build -t jupyter-gpu .
# sudo docker run -p 8888:8888 -v "./:/tf" jupyter-gpu
# sudo docker build -t jupyter-gpu . ; sudo docker run -p 8888:8888 -v "./:/tf" jupyter-gpu