const gladiatorsRouter = require('./gladiators');

module.exports = (app) => {
  // app.use('/things', thingsRoutes);
  app.use('/gladiators', gladiatorsRouter);
};
