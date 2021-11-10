# docker-jupyter-sql
Docker image for jupyter with prebuilt sql and git modules

## to build

```
docker build --tag jupyter-sql .
```

## to run

```
mkdir -p nb
sudo chmode -R a+rw nb/
docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}/nb":/home/jovyan/work jupyter-sql:latest
```

## to use

* To use SQL in the notebook see https://github.com/catherinedevlin/ipython-sql

* To push or pull to/from a git repo open a terrminal in JupyterLab.  You will need to enter user/password for each push or pull.
