const { Op } = require("sequelize");
const db = require("../models");
const prepareHeroData = require("../helpers/prepareHeroData").prepareHeroData;

const Heroes = db.heroes;

exports.create = (req, res) => {
  if (!req.body) {
    res.status(400).send({ message: "Content can not be empty!" });

    return;
  }

  const hero = { };

  Heroes.create(hero)
    .then(data => res.send(data))
    .catch(err => res.status(500).send({ message: err.message || "Some error occurred while creating the Hero." }));
};

exports.findAll = (req, res) => {
    const query = req.query;
    const options = { where: { } };

    if (query?.p) {
        options.order = [[query.p, 'ASC']];
    }

    if (query?.v) {
        options.where = {
            [query.p]: {
                [Op.gt]: query.v,
            }
        };
        options.order = [[query.p, 'ASC']];
    }

    if (query?.f) {
        options.where = {
            biography: {
                    [Op.like]: `%${query?.f}%`
                }
            };
    }

    Heroes.findAll(options)
        .then(data => {
            const newData = prepareHeroData(data);

            res.send(newData);
        })
        .catch(err => res.status(500).send({ message: err.message || "Some error occurred while retrieving Heroes." }));
};

exports.findOne = (req, res) => {
  const id = req.params.id;

  Heroes.findByPk(id)
    .then(data => {
      const newData = prepareHeroData([data]);

      res.send(newData);
    })
    .catch(err => {
      console.log(err)
      res.status(500).send({ message: "Error retrieving Hero with id=" + id })
    });
};

exports.update = (req, res) => {
  const id = req.params.id;

  Heroes.update(req.body, { where: { id: id } })
    .then(num => {
      if (num === 1) {
        res.send({ message: "Hero was updated successfully." });
      } else {
        res.send({ message: `Cannot update Hero with id=${id}. Maybe Hero was not found or req.body is empty!` });
      }
    })
    .catch(err => res.status(500).send({ message: "Error updating Hero with id=" + id }));
};

exports.delete = (req, res) => {
  const id = req.params.id;

  Heroes.destroy({ where: { id: id } })
    .then(num => {
      if (num === 1) {
        res.send({ message: "Hero was deleted successfully!" });
      } else {
        res.send({ message: `Cannot delete Hero with id=${id}. Maybe Hero was not found!` });
      }
    })
    .catch(err => res.status(500).send({ message: "Could not delete Hero with id=" + id }));
};

exports.deleteAll = (req, res) => {
  Heroes.destroy({ where: {} })
    .then(nums => res.send({ message: `${nums} Heroes were deleted successfully!` }))
    .catch(err => res.status(500).send({ message: err.message || "Some error occurred while removing all Heroes." }));
};
