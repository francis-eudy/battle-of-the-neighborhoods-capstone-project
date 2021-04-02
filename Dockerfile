ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Ryan Francis Eudy"

COPY requirements.txt /tmp/
RUN pip install --quiet --no-cache-dir -r /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"




