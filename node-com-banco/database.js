const knex = require('knex') ({
    client: 'pg',
    connection: {
      host : '127.0.0.1',
      user : 'postgres',
      password : 'root',
      database : 'lets_code_class'
    }
});

module.exports = knex;