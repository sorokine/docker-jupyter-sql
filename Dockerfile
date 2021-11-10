FROM jupyter/scipy-notebook

USER root
RUN apt-get update --yes && \
    apt-get install --yes build-essential libpq-dev

USER ${NB_UID}

RUN pip install ipython-sql psycopg2 pgspecial

RUN conda install -c conda-forge nodejs jupyterlab-git

RUN jupyter lab build
