const express = require("express");
const app = express();
const port = 9090;

app.get("/hello", (req, res) => {
  res.send("Hello from Devops – Pavan Shelge");
});

app.listen(port, () => {
  console.log(`App listening on port ${port}`);
});
