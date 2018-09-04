# klov-docker
A Docker image implementation of Klov Report server for the ExtentReports API.

## Quick Start
### Pull the image:
`docker pull rwestergren/klov-docker`

### Run an instance:
`docker run -d --name klov -p 8000:80 rwestergren/klov-docker`

### Specify a Mongo Host:
`docker run -d --name klov -p 8000:80 -e DB_HOST=my-mongo-db.local rwestergren/klov-docker`
