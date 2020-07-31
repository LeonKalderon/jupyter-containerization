FROM continuumio/miniconda3

LABEL maintainer="Leon Kalderon lkalderon2@gmail.com>"
LABEL version="0.1"
LABEL description="Jupyter Notebook with debugger"

WORKDIR /jup

RUN conda install -c conda-forge jupyterlab
RUN conda install -c conda-forge nodejs
RUN jupyter labextension install @jupyterlab/debugger
RUN conda install xeus-python -c conda-forge

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
