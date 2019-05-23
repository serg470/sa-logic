FROM python:latest
COPY sa /app
WORKDIR /app
RUN pip3 install --default-timeout=100 -r requirements.txt 
#&& \
#    python3 -m textblob.download_corpora
EXPOSE 5050
ENTRYPOINT ["python3"]
CMD ["sentiment_analysis.py"]
