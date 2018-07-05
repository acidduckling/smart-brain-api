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
