FROM haskell:8

WORKDIR /opt/app

#RUN stack install pandoc pandoc-citeproc

ENTRYPOINT ["bash"]
