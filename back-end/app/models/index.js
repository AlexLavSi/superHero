const dbConfig = require("../config/db.config.js");

let Sequelize = require("sequelize");
let sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  dialect: dbConfig.dialect,
  operatorsAliases: false,

  pool: {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
    idle: dbConfig.pool.idle
  }
});

sequelize
  .authenticate()
  .then(() => {
    console.log('Connection has been established successfully.');
  })
  .catch(err => {
    console.error('Unable to connect to the database:', err);
  });

let db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.heroes = require("./heroes.model.js")(sequelize, Sequelize);

module.exports = db;
