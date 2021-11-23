const express = require('express');
const mysql = require('mysql');

const PORT = 3000;
const HOST = '0.0.0.0';

const app = express();

const connection = mysql.createConnection({
    host: 'mysql',
    user: 'root',
    password: 'test',
    database: 'db'
});

connection.connect();

app.get('/', (req, res) => {
    connection.query('SELECT * FROM etudiants', (error, results) => {
        if(error){
            throw error;
        }
 
        res.send(results.map(etudiant => ({ id: etudiant.id, name: etudiant.nome, email: etudiant.email})));
    });
});

app.listen(PORT, HOST);