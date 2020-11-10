FROM golang:1.15-alpine

WORKDIR /go/src/avancadevmsb

COPY . .

RUN GOOS=linux go build -o avancadevmsb

EXPOSE 9091

ENTRYPOINT [ "./avancadevmsb" ]