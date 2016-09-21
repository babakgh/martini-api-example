FROM golang:onbuild

MAINTAINER Babak Gh

#switch to our app directory
RUN mkdir -p /app
WORKDIR /app

#copy the source files
COPY . /app

# Build app
RUN go build

CMD ["/app/martini-api-example"]
