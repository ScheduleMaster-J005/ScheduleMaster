const mysql = require('mysql2')

const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'manager',
  port: 3306,
  database: 'ScheuleMaster',
  connectionLimit: 10,
})

module.exports = {
  pool,
}
