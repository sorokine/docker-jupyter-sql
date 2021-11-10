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

* Follow these examples for SQL: https://github.com/catherinedevlin/ipython-sql

* Use git push or pull in a terminal in JupyterLab, you need to enter user/password each time.
