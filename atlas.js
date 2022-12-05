const { MongoClient } = require("mongodb");
const { ATLAS } = require('./provider/atlas.config');

const uri = `mongodb+srv://${ATLAS.user}:${ATLAS.key}@bot-database.w7oyxwa.mongodb.net/?retryWrites=true&w=majority`;

const serveAtlas = new MongoClient(uri, {
  useNewUrlParser: true,
  useUnifiedTopology: true
});

module.exports = serveAtlas