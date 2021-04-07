const mysql = require('mysql');
const inquirer = require('inquirer');
require("./employeeTrackerDBConnection");

const appQuestions = () => {
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
            case "Add department":
                addDepartment()
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
    ]).then((res) => {
        connection.query('INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES (?, ?, ?, ?)', [res.firstName, res.lastName, res.roleId, res.managerId], function (err, data) {
            if (err) throw err;
            console.table("Added Successfully!");
            appQuestions();
        })
    })
}

const addDepartment = () => {
    inquirer.prompt([{
        type: "input",
        name: "department",
        messagee: "Which department would you like to add?"
    },
    ]).then((res) => {
        connection.query('INSERT INTO department (name) VALUES (?)', [res.department], ((err, data) => {
            if (err) throw err;
            console.table("Added Successfully!");
            appQuestions();
        }))
    })
}

const addRole = () => {
    inquirer.prompt([
        {
            type: "input",
            name: "title",
            message: "Please enter a title"
        },
        {
            type: "number",
            name: "salary",
            message: "Please enter salary info"
        },
        {
            type: "number",
            name: "department_id",
            message: "Please enter a department ID"
        },
    ]).then((response) => {
        connection.query("INSERT INTO roles (title, salary, department_id) values (?, ?, ?)", [response.title, response.salary, response.department_id], function (err, data) {
            console.table(data);
        })
        appQuestions();
    })
}

const updateRole = () => {
    inquirer.prompt([
        {
            type: "input",
            name: "name",
            message: "Please enter the employee that you would like to update"
        },
        {
            type: "number",
            name: "role_id",
            message: "Please enter the a new role ID"
        }
    ]).then((response) => {
        connection.query("UPDATE employee SET role_id = ? WHERE first_name = ?", [response.role_id, response.name], function (err, data) {
            console.table(data);
        })
        appQuestions();
    })
}

module.exports = appQuestions;
