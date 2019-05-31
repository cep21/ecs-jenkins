FROM golang:1.12.5 as base
WORKDIR /app
COPY main.go .
RUN go build main.go

FROM scratch
COPY --from=base  /app/main /main
CMD ["/main"]
