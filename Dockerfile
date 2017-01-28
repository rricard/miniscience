FROM continuumio/miniconda3
MAINTAINER Robin Ricard

RUN /opt/conda/bin/conda install -y jupyter openblas scikit-learn pandas gensim nltk murmurhash tensorflow
RUN mkdir /opt/notebooks

EXPOSE 8888
VOLUME /opt/notebooks
WORKDIR /opt/notebooks

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]