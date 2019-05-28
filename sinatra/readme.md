#### build
`docker build -t local/sinatra .`
#### run
#### run redis
`docker run -d --net=app  -p 6380:6379 --name redis d3e3588af517`
#### run app and link network
`docker run -it -d -p 4567:4567 --name app --link redis -v $PWD/webapp:/opt/webapp marvinmin/sinatra:v1`