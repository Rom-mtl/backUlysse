const gladiatorsRouter = require('express').Router();
const asyncHandler = require('express-async-handler');
const gladiatorsController = require('../controllers/gladiators');

// playlistsRouter.get('/', asyncHandler(controller));
gladiatorsRouter.get('/', asyncHandler(gladiatorsController.getAllGladiators));

module.exports = gladiatorsRouter;
