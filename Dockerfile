# official pytorch + GPU image
FROM pytorch/pytorch:2.1.1-cuda12.1-cudnn8-runtime

# install git
RUN apt-get -y update
RUN apt-get -y install git

# base libs
RUN pip install \
    pandas \
    numpy \
    accelerate \
    jupyterlab \
    jupyterlab_widgets \
    ipywidgets \
    jupyter-dash \
    jupyterlab-cell-status-extension

# install stable diffusion from source
RUN pip install git+https://github.com/huggingface/diffusers.git@main

# install utilities
RUN pip install --upgrade transformers

RUN mkdir project
WORKDIR /project
