const mysql = require("mysql");
const inquirer = require("inquirer");
const consoleTable = require('console.table');

// create the connection information for the sql database
const connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "root1234",
    database: "employee_DB"
});

// connect to the mysql server and sql database
connection.connect(function (err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    start();
});

// function which prompts the user for what action they should take
start() => {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "Welcome to the employee tracker management system. What would you like view, add, or update?",
            choices: [
                "View employees",
                "View departments",
                "View roles",
                "Add employee",
                "Add department",
                "Add role",
                "EXIT"
            ]
        })
        .then((answer) => {
            // based on their answer, either call view or Add functions
            switch (answer.action) {
                case "View employees":
                    viewEmployees();
                    break;
                case "View departments":
                    viewDepartments();
                    break;
                case "View roles":
                    viewRolls();
                    break;
                case "Add employees":
                    addEmployees();
                    break;
                case "Add departments":
                    addDepartments();
                    break;
                case "Add roles":
                    addRolls();
                    break;
                case "EXIT":
                    end();
                    break;
            }
        })
    }
