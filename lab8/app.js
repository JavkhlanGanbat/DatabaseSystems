const express = require("express");
const bodyParser = require("body-parser");
const mysql = require("mysql");

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "test",
});

db.connect((err) => {
  if (err) {
    console.error("Database connection error:", err.message);
    process.exit(1);
  }
  console.log("Connected to database.");
});

app.get("/", (req, res) => {
  res.send(`
    <h1>Login</h1>
    <form method="POST" action="/login">
      <label>Username:</label><br>
      <input type="text" name="username" /><br><br>
      <label>Password:</label><br>
      <input type="password" name="password" /><br><br>
      <button type="submit">Login</button>
    </form>
  `);
});

app.post("/login", (req, res) => {
  const { username, password } = req.body;

  const query = `SELECT * FROM users WHERE username = '${username}' AND password = '${password}'`;

  console.log(`Executing query: ${query}`);

  db.query(query, (err, results) => {
    if (err) {
      res.send(`
        <h1>Database Error</h1>
        <pre>${err.message}</pre>
        <p>Query Executed: ${query}</p>
      `);
      return;
    }

    if (results.length > 0) {
      res.send(`
        <h1>Welcome</h1>
        <p>Query Executed: ${query}</p>
        <pre>${JSON.stringify(results, null, 2)}</pre>
      `);
    } else {
      res.send(`
        <h1>Database Error</h1>
        <pre>Incorrect credentials or syntax error</pre>
        <p>Query Executed: ${query}</p>
      `);
    }
  });
});

app.listen(3000, () => {
  console.log("Server running at http://localhost:3000");
});
