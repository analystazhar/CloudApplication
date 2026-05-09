const express = require('express');
const mysql = require('mysql2');
const os = require('os');

const app = express();

app.use(express.static(__dirname));

const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME
});

app.get('/api', (req, res) => {

    db.query('SELECT NOW()', (err, result) => {

        if(err){
            return res.json({
                message: "Application Running",
                hostname: os.hostname(),
                database: "Database Failed"
            });
        }

        res.json({
            message: "Application Running Successfully",
            hostname: os.hostname(),
            database: "RDS Connected"
        });

    });

});

app.listen(3000, () => {
    console.log("Server running on port 3000");
});