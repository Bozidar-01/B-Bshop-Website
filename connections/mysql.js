var mysql = require('mysql');

const config = {
  host: 'us-cdbr-east-06.cleardb.net',
  user: 'be6f9424f53300',
  password: 'd15aca1a',
  database: 'heroku_c6bec91e6dbc641'
}


module.exports = {
  connection: mysql.createConnection(config)
}