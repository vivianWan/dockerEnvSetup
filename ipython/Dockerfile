FROM miniconda3

LABEL maintainer=@vivianWan

RUN conda update conda && \
conda install --quiet --yes ipython && \
conda clean -tipsy

CMD ["ipython"]

RUN conda install --quiet --yes pandas seaborn scikit-learn nltk gensim && \
conda clean --yes --all
