const gladiatorsRouter = require('express').Router();
const asyncHandler = require('express-async-handler');
const gladiatorsController = require('../controllers/gladiators');

// playlistsRouter.get('/', asyncHandler(controller));
gladiatorsRouter.get('/', asyncHandler(gladiatorsController.getAllGladiators));
gladiatorsRouter.post('/', asyncHandler(gladiatorsController.addNewGladiator));

module.exports = gladiatorsRouter;
