const { findAll } = require('../models/gladiators');

const getAllGladiators = async (req, res) => {
  const data = await findAll();
  if (data) {
    return res.status(200).send(data);
  }
  return res.status(500).send('There isnt Gladiators yet');
};

module.exports = { getAllGladiators };
