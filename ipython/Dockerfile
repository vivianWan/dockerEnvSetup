FROM miniconda3

LABEL maintainer=@vivianWan

RUN conda update conda && \
conda install --quiet --yes ipython && \
conda clean -tipsy

RUN conda install --quiet --yes pandas seaborn scikit-learn nltk gensim && \
conda clean --yes --all

RUN conda install --quiet --yes flask pymongo && \
conda clean --yes --all

RUN pip install Flask-JWT Flask-RESTful

RUN  pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.10.1-cp36-cp36m-linux_x86_64.whl

CMD ["ipython"]
