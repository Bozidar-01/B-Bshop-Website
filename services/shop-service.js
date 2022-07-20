var mysqlConfig = require('../connections/mysql');
var connection = mysqlConfig.connection;



getAllProducts = () => {
    return new Promise((resolve, reject) => {
        connection.query('SELECT * FROM products ', (error, elements) => {
            if (error) {
                return reject(error);
            }
            return resolve(elements);
        });
    });
};

getInteriorProducts = () => {
    return new Promise((resolve, reject) => {
        connection.query('SELECT * FROM products WHERE category_id= ' + 1, (error, elements) => {
            if (error) {
                return reject(error);
            }
            return resolve(elements);
        });
    });
};

getExteriorProducts = () => {
    return new Promise((resolve, reject) => {
        connection.query('SELECT * FROM products WHERE category_id= ' + 2, (error, elements) => {
            if (error) {
                return reject(error);
            }
            return resolve(elements);
        });
    });
};



module.exports = {
    getAllProducts,
    getInteriorProducts,
    getExteriorProducts,
}

