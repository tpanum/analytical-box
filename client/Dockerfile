FROM continuumio/miniconda3:latest

RUN /opt/conda/bin/conda install jupyter -y --quiet \
    && mkdir /opt/notebooks

EXPOSE 8888

CMD /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root --NotebookApp.iopub_data_rate_limit=1.0e10 --NotebookApp.token=

