FROM python:3.7-alpine
COPY sa /app
WORKDIR /app
RUN pip3 install -r requirements.txt # && \
#    python3 -m textblob.download_corpora lite
EXPOSE 5050
ENTRYPOINT ["python3"]
CMD ["sentiment_analysis.py"]
