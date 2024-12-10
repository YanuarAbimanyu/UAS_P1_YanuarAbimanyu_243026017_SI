const express = require('express')
const app = express()
const port = 3000

// import body parser
const bodyParser = require('body-parser')

app.get('/', (req,res) => {
    const html = `
    <!DOCTYPE html>
    <html lang="id">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>API Hero Mobile Legend</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
                padding: 50px;
                color: white; /* Mengubah warna teks agar kontras dengan latar belakang */
                background-color: black;
            }
            h1 {
                color: white; /* Warna teks untuk judul */
            }
            button {
                padding: 10px 20px;
                font-size: 16px;
                color: white;
                background-color: #007bff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <h1>Welcome to API Mobile Legend</h1>
        <p>Klik tombol di bawah ini untuk melihat list hero:</p>
        <button onclick="window.location.href='/api/posts'">List Hero</button>
    </body>
    </html>
    `;
    res.send(html);
  
})

// insert edit and delete
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

// import route post 
const postsRouter = require('./routes/posts')
app.use('/api/posts',postsRouter)

app.listen(port,()=>{
    console.log(`aplikasi ini berjalan di http://localhost:${port}`)
})