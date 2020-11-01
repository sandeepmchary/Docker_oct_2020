const express = require('express')
const app = express();
app.get('/hello',(req, res) => {
    res.send("our api is working successfully")
});
app.listen(3000, () => {
    console.log("Started api service");
});