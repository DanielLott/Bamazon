const mysql = require("mysql");

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon"
});

connection.connect(function (err) {
    if (err) throw err;


    displayAllProducts();

    function displayAllProducts() {
        console.log("\nWelcome to BAMAZON. We have products from BAM to Z! Here is a list of all of our current stock:\n----------------------------------------------------------------------------------------------");
        const thisQuery = "SELECT item_id, product_name, price FROM products";
        connection.query(thisQuery, function (err, res, fields) {
            if (err) throw err;
            for (let i = 0; i < res.length; i++) {
                console.log(
                    res[i].item_id + " --- " + res[i].product_name + " --- $" + res[i].price
                );
            }
        })

    }
    buyWhatAndQuantity
    function buyWhatAndQuantity() {
        inquirer
        .prompt({
            name: "product choice"
            
        })

    }



    connection.end();
});