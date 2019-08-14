FROM python:3.7-alpine
COPY sa /app
WORKDIR /app
RUN pip3 install --default-timeout=1000 -r requirements.txt  && \
    mkdir /root/nltk_data && \
    chmod -R 777 /root/nltk_data && \
    python3 -m textblob.download_corpora lite
EXPOSE 5050
ENTRYPOINT ["python3"]
CMD ["sentiment_analysis.py"]
