const gladiatorsRouter = require('express').Router();
const asyncHandler = require('express-async-handler');
const gladiatorsController = require('../controllers/gladiators');

// playlistsRouter.get('/', asyncHandler(controller));
gladiatorsRouter.get('/', asyncHandler(gladiatorsController.getAllGladiators));
gladiatorsRouter.post('/', asyncHandler(gladiatorsController.addNewGladiator));
gladiatorsRouter.delete(
  '/',
  asyncHandler(gladiatorsController.deletteGladiator)
);
gladiatorsRouter.put(
  '/:id',
  asyncHandler(gladiatorsController.updateGladiator)
);

module.exports = gladiatorsRouter;
