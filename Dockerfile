FROM golang:onbuild

MAINTAINER Babak Gh

#switch to our app directory
RUN mkdir -p /app
WORKDIR /app

# Build app
RUN go build

#copy the source files
COPY ./martini-api-example /app

CMD ["/app/martini-api-example"]
