var mysql = require('mysql');

const config = {
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'b&bshop_db'
}


module.exports = {
  connection: mysql.createConnection(config)
}