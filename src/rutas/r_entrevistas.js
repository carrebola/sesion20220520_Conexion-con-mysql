const express = require('express')
const r_entrevistas = express.Router()
const {c_entrevistas} = require('../controladores/c_entrevistas')

r_entrevistas.get('/', c_entrevistas)




module.exports = r_entrevistas