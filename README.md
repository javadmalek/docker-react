## Commands

- Build the container: `docker build -t mrjavad/visits:latest .`  
- Run/start the container up: `docker run -p 8081:8081 mrjavad/visits`
- Docker run image: `docker-compose up`
- Docker run image in background: `docker-compose up -d`
- Docker stop background containers: `docker-compose down`
- Docker build and run image: `docker-compose up --build`


- Build docker from specific file `docker build -f Dockerfile.dev .`
- build and tag the container `docker build -f Dockerfile.dev  -t mrjavad/frontend .`
- run container `docker run -it -p 3000:3000 mrjavad/frontend`
- run container by passing volumes `docker run -p 3000:3000 -v /usr/app/node_modules -v $(pwd):/usr/app mrjavad/frontend`
- run test `docker run -it mrjavad/frontend npm run test`
- executing test container `docker exec -it test_container_id sh`