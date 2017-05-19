var express = require('express');
var app = express()

app.get('/', function(req, res) {
  res.send('Hello, Wonderful World!');
});

app.listen(3000)
