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

module.exports = { findAll };
