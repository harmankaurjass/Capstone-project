const mysql = require('mysql');


const connection = mysql.createPool({
    connectionLimit: 10, // default = 10
    host: '127.0.0.1',
    port: 3306,
    user: 'root',
    password: '',
    database: 'our bookstore'
});

try {
     connection.getConnection(function (err) {
         if (err) {
            console.log(err);
            console.error('error connecting to DB');
            return;
        }
         console.log('Connected to DB successfully');
     });
 } catch (err) {
     console.log('error occured while connect DB', err)
 }


module.exports = connection;
