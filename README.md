go build:
	go build server.go
	
docker image:
	docker build -t sample-grpc .
	
docker run:
	docker run -itd --name sample-grpc -p 8888:8888 sample-grpc:latest

