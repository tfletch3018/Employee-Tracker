const mysql = require('mysql');
const inquirer = require('inquirer');
require("./employeeTrackerDBConnection");

function appQuestions() {
    inquirer.prompt({
        message: "What would you like to do?",
        type: "list",
        choices: [
            "View all employees",
            "View all employees by department",
            "View all employees by manager",
            "Add employee",
            "Remove an employee",
            "Update employee role",
            "Update employee manger",
            "Leave app",
        ],

        name: "options"
    }).then(answers => {
        console.log(answers.options);
        switch (answers.options) {
            case "View all employees":
                viewEmployees()
                break;
            case "View all employees by department":
                viewDepartments()
                break;
            case "View all employees by manager":
                viewManagers()
                break;
            case "Add employee":
                addEmployee()
                break;
            case "Remove an employee":
                removeEmployee()
                break;
            case "Update an employee role":
                updateRole()
                break;
            case "Update an employee manager":
                updateManager()
                break;
            default: connection.end()
                break;
        }
    })
}
console.log("Check status of app, how  are we doing so far?");

const viewEmployees = () => {
    connection.query("SELECT * FROM employee", (err, data) => {
        console.table(data);
        appQuestions();
    })
}

const viewDepartments = () => {
    connection.query("SELECT * FROM department", (err, data) => {
        console.table(data);
        appQuestions();
    })
}

const viewManagers = () => {
    connection.query("SELECT * FROM managers", (err, data) => {
        console.table(data);
        appQuestions();
    })
}

const addEmployee = () => {
    inquirer.prompt([{
        type: "input",
        name: "first name",
        message: "what is the employee's first name?"
    },
    {
    type: "input",
    name: "last name",
    message: "What is the employee's last name?",
    },
    {
        type: "number",
        name: "roleId",
        message: "What is the roleId for this employee's role?"
    },
    {
        type: "input",
        name: "managerId",
        message: "Please provide the managerId for this employee's manager",
    }
]).then(function(res))
}

})

