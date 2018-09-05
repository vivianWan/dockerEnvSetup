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

CMD ["ipython"]
