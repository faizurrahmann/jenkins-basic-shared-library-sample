FROM debian
LABEL mainter=FAIZUR
RUN apt-get update
RUN apt-get install python-pip -y
RUN apt-get install python-dev -y
COPY python-flask /root/python-flask
WORKDIR /root/python-flask
EXPOSE 5000
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["web.py"]