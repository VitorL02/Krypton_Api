const express = require('express')
const routes = express.Router()


let database = [
    {'1' : {atividade : 'tomar café da manhã',hora : '06:30'}},
    {'2' : {atividade : 'correr',hora : '06:45'}},
    {'3' : {atividade : 'tomar banho',hora : '07:15'}},
    {'4' : {atividade : 'transito',hora : '07:40'}},
    {'5' : {atividade : 'ler emails',hora : '08:15'}},
    {'6' : {atividade : 'ir para cada dos avós',hora : '09:00'}},
    {'8' : {atividade : 'almoço em família',hora : '12:00'}},
    {'9' : {atividade : 'ver filme em casa',hora : '14:00'}},
    {'10' : {atividade : 'tomar banho',hora : '17:00'}},
    {'11' : {atividade : 'arrumar para aniversario',hora : '17:20'}},
    {'12' : {atividade : 'transito',hora : '17:45'}},
    {'13' : {atividade : 'comemoração do aniversario',hora : '18:30'}},
    {'14' : {atividade : 'transito',hora : '21:30'}},
    {'15' : {atividade : 'ligar video game',hora : '22:00'}},
    {'16' : {atividade : 'descansar',hora : '23:00'}},
]
// Busca os dados do json
routes.get('/',(req,res) => {

    //paginação de rotas
    const page = req.query.page
    const limit = req.query.limit

    const startIndex = (page-1)*limit
    const endIndex = page * limit

    const resultadoDatabase = database.slice(startIndex,endIndex)
    return res.json(resultadoDatabase)
})

routes.post('/parametros',(req,res) => {
    const body = req.body

    if(!body)
      return res.status(400).end();
    
    database.push(body)
    return res.json
})

routes.delete('/:id', (req,res)=>{
    const id = req.params.id


    let newDatabase = db.filter( item => {
        if (!item[id])
            return item
    }) 

    database = newDatabase

    return res.send(newDatabase)
})



module.exports = routes