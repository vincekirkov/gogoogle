FROM golang:1.12.0-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app
# Add this go mod download command to pull in any dependencies
# Our project will now successfully build with the necessary go libraries included.
RUN apk add --no-cache git
RUN go build .
# Our start command which kicks off
# our newly created binary executable
CMD ["/app/auth"]
