FROM    node:alpine

RUN     npm install -g http-server

# The default port of the application
#EXPOSE  8080

CMD ["http-server", "--cors", "-p8080", "/"]
