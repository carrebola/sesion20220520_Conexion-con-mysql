const express = require('express')
const mysql = require('mysql2');

const connec = require('./database')
require('dotenv').config()

const r_entrevistas = require('./rutas/r_entrevistas')


 

console.log(process.env.PORT) // remove this after you've confirmed it working
const app = express()
app.use('/api/entrevistas', r_entrevistas)
app.get('/', (req, res)=>{
    res.status(200).send('Raiz de la api')
})
app.listen(process.env.PORT, ()=>{
    console.log('Servidor en puerto '+process.env.PORT)
})


