#### build
`docker build -t local/sinatra .`
#### run
`docker run -p 4567:4567 --name app -v $PWD/webapp:/opt/webapp local/sinatra`