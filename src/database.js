
require('dotenv').config()
const mysql = require('mysql2');


    try { 
        var connec =   mysql.createConnection({
            host: process.env.DBHOST,
            user: process.env.DBUSER,
            password: process.env.DBPASS,
            database: process.env.DBNAME
        });
        console.log('conectado a db');
        
    } catch (error) {
        console.log("Error al conectar con la base de datos");
    }

    // connec.query("SELECT * FROM entrevistas", 
    //         (error, results) => {
    //             if(error)
    //                 throw error;
    //             //response.status(200).json(results);
    //             console.log(results);
    //             //console.log(fields);
    //         });

module.exports = connec;
