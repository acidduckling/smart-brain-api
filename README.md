# SmartBrain-api - v2
Final project for Udemy course

1. Clone this repo
2. Run `npm install`
3. Run `npm start`
4. You must add your own API key in the `controllers/image.js` file to connect to Clarifai API.

You can grab Clarifai API key [here](https://www.clarifai.com/)

** Make sure you use postgreSQL instead of mySQL for this code base.

run postgres commands with **psql**:
```bash
psql postgres://username:password@localhost:5432/db_name
```

## Updating .env file
When adding new variables ot the .env file, ensure it does not contain any sensitive data and then run the following to track new changes:
```bash
# Enable tracking of the changes
git update-index --no-assume-unchanged ./.env
# Make your changes to the .env file, then commit:
git add ./.env
git commit -m "Updated .env file"
# Now restore the unchanged status
git update-index --assume-unchanged ./.env
```

## Docker Notes
```bash
# Build Docker file in current folder with specified tag name
docker build -t [tagname] .

# Run interactive docker
docker run -it [tagname]

# Run detached container
docker run -it -d [tagname]

# List of running containers
docker ps

# Attach interactive terminal to running container
docker exec -it [containername|id] bash

# Stop a container
docker stop [containerid]

# expose ports when running container
docker run -it -p hostPort:containerPort [containerid]

# Build the docker-compose.yml
docker-compose build

# Run the docker-compose
docker-compose run [containerName]

# bring up the docker-compose environment (remove build flag if build has been completed already)
docker-compose up --build

# run interactive terminal for container in docker-compose file
docker-compose exec [containerName] /bin/bash

# Run interactive redis
docker-compose exec redis redis-cli
```