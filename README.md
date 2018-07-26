# SmartBrain-api

Final project for Udemy course

1.  Clone the following repos (git clone REPO_URL):

    - https://github.com/acidduckling/smart-brain-api
    - https://github.com/acidduckling/smart-brain-client
    - https://github.com/acidduckling/smart-brain-serverless (only required if you want to integrate AWS Lambda functions)

2.  Start the backend services with docker-compose:

```bash
docker-compose up
```

3.  Setup the AWS Lambda function (follow the README.md file in the smart-brain-serverless repo)

4.  Update the client .env file with the correct endpoint for the AWS rank handler (the endpoint should be displayed to you when you run serverless command - see the serverless readme)

5.  Start the front end client

```bash
yarn start
```

4.  For a nice working environment is VS Code, save each of the repos to a folder called smartbrain, and create a **smart-brain.code-workspace** file with the following config (linting is disabled because much of the supplied course code fails many best practices unfortunately, and I am too lazy to correct it)!:

```json
{
  "folders": [
    {
      "path": "smart-brain-api"
    },
    {
      "path": "smart-brain-client"
    },
    {
      "path": "smart-brain-serverless"
    }
  ],
  "settings": {
    "eslint.enable": false,
    "files.associations": {
      "*.js": "javascriptreact"
    }
  }
}
```

## Debugging Node in Docker Container via VS Code

**Docker - Node:Nodemon** configuration has been added to launch.json file to enable attaching to the Nodemon server in the Docker container for the **smart-brain-api** project.

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
# Run the full environment as configured in docker-compose.yml
docker-compose up

# force a rebuild of the environment if any of the Dockerfile or doccker-compose.yml files are updated
docker-compose up --build

# Build the docker-compose.yml
docker-compose build

# Run the docker-compose
docker-compose run [containerName]

# run interactive terminal for container in docker-compose file
docker-compose exec [containerName] /bin/bash

# Run interactive redis
docker-compose exec redis redis-cli

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
```
