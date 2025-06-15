# Things to remember
1. Check the name you are giving to the mongo db in your docker-compose file. Use the same name in the server.js file while connnecting to the DB, otherwise, you will end up wasting a lot of time trying to de-bug it :)

//line 21 from server.js
let mongoUrlDockerCompose = `mongodb://${DB_USER}:${DB_PASS}@mongo-db`;

2. If you are making any changes to your code, destorying and re-creating the resources might not always reflect those changes. This is usually beacuse the container config gets cached.
Use --no-cache flag with build command to avoid this.
Start the containers after this.

docker-cdocker-compose -f docker-compose.yaml build --no-cache
docker-compose -f docker-compose.yaml up -d

3. Make sure the name of your db and collection name matches on the mongo express with what you have in the server.js file
let databaseName = "my_db";
let collectionName = "my_collection";
