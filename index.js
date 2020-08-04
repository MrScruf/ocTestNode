const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => res.send('Hello World!'))

app.get('/ahoj', (req, res) => res.send('Ahojda zpátky!'))

app.get('/ahoj/ahojda', (req, res) => res.send('Ahojda, jojda,Hello World!'))

app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))
