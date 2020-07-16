module.exports = {
  HOST: "db_superHero",
  USER: "superHeroAdmin",
  PASSWORD: "superHeroPassword",
  DB: "super_hero",
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
