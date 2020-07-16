module.exports = (sequelize, Sequelize) => {
  return sequelize.define("heroes", {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true
    },
    intelligence: {
      type: Sequelize.INTEGER
    },
    strength: {
      type: Sequelize.INTEGER
    },
    speed: {
      type: Sequelize.INTEGER
    },
    durability: {
      type: Sequelize.INTEGER
    },
    power: {
      type: Sequelize.INTEGER
    },
    combat: {
      type: Sequelize.INTEGER
    },
    img: {
      type: Sequelize.STRING
    },
    biography: {
      type: Sequelize.TEXT
    }
  },
    { timestamps: false });
};
