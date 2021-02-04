const { findAll, createGlad, deletteGlad } = require('../models/gladiators');

const getAllGladiators = async (req, res) => {
  const data = await findAll();
  if (data) {
    return res.status(200).send(data);
  }
  return res.status(500).send('There isnt Gladiators yet');
};

const addNewGladiator = async (req, res) => {
  const data = await createGlad(req.body.data);

  if (data) {
    return res.status(201).send(data);
  }
  return res.status(500).send('Something went wrong');
};

const deletteGladiator = async (req, res) => {
  const data = await deletteGlad(req.body.data);
  if (data) {
    return res.status(200).send('Gladiator delette with success');
  }
  return res.status(500).send('Something went wrong');
};

module.exports = { getAllGladiators, addNewGladiator, deletteGladiator };
