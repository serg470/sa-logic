FROM python:3.7-alpine
COPY sa /app
WORKDIR /app
RUN pip3 install -r requirements.txt
# && \
#    sudo python3 -m textblob.download_corpora
EXPOSE 5050
ENTRYPOINT ["python3"]
CMD ["sentiment_analysis.py"]
