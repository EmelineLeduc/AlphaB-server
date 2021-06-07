require("dotenv").config();
const express = require("express");
const connection = require("./db");
const cors = require("cors");
const serverPort = process.env.PORT || 4000;
const app = express();

connection.connect((err) => {
  if (err) {
    console.error("error connecting: " + err.stack);
  } else {
    console.log(
      "connected to database with threadId :  " + connection.threadId
    );
  }
});
app.use(cors());
app.use(express.json());

//Create : data from contact form
app.post("/users", (req, res) => {
  const { firstname, lastname, email, message } = req.body;
  connection.query(
    "INSERT INTO users (firstname, lastname, email, message) VALUES (?, ?, ?, ?)",
    [firstname, lastname, email, message],
    (err, result) => {
      if (err) {
        res.status(500).send("Error saving the user");
      } else {
        res.status(201).send("User successfully saved");
      }
    }
  );
});

//Read : data from contact form
app.get("/users", (req, res) => {
  connection
    .promise()
    .query("SELECT * FROM users")
    .then(([results]) => {
      res.json(results);
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Error retrieving users from db.");
    });
});

//Create : data from rating form
app.post("/ratings", (req, res) => {
  const { firstname, lastname, job, message, rating } = req.body;
  connection.query(
    "INSERT INTO ratings (firstname, lastname, job, message, rating) VALUES (?, ?, ?, ?, ?)",
    [firstname, lastname, job, message, rating],
    (err, result) => {
      if (err) {
        res.status(500).send("Error saving the rating");
      } else {
        res.status(201).json({ id: result.insertId, ...req.body });
      }
    }
  );
});

//Read : data from rating form
app.get("/ratings", (req, res) => {
  connection
    .promise()
    .query("SELECT * FROM ratings WHERE rating >= 4 LIMIT 8")
    .then(([results]) => {
      res.status(200).json(results);
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Error retrieving ratings from db.");
    });
});

app.listen(serverPort, () => {
  console.log(`Server listening on port ${serverPort}`);
});
