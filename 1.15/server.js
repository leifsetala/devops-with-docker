const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello devops with docker! - I have been updated by github actions!');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

