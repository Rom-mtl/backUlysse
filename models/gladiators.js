const db = require('../db.js');

const findAll = async () => {
  const result = await db
    .query(`SELECT * FROM gladiators  `)
    .catch((err) => console.log(err));
  if (result.length) {
    return result;
  }
  return null;
};

const createGlad = async (newGlad) => {
  console.log(newGlad);
  const { name, picture, victoires, arme, popularity } = newGlad;
  const result = await db
    .query(
      'INSERT INTO gladiators (name, picture, victories, arme, popularity) VALUES (?, ?, ?, ?, ?)',
      [name, picture, victoires, arme, popularity]
    )
    .catch((err) => console.log(err));
  if (result) {
    return {
      id: result.id,
      name,
    };
  }
  return null;
};

const deletteGlad = async (idGlad) => {
  const result = await db
    .query('DELETE FROM gladiators WHERE id = ?', [idGlad])
    .catch((err) => console.log(err));
  if (result) {
    return {
      name: result.name,
    };
  }
  return null;
};

module.exports = { findAll, createGlad, deletteGlad };
