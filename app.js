const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/spec', (req, res) => {
  res.send('Hello Spec!')
})

module.exports = app;
