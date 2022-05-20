const connec = require('../database')

module.exports = {
    c_entrevistas: (req,res)=>{
        
        connec.query("SELECT * FROM entrevistas", 
        (error, results) => {
            if(error)
                throw error;
            //response.status(200).json(results);
            console.log(results);
            //console.log(fields);
            res.json(results)
        });
       
    }
}