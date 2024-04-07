import express from 'express';
import os from 'os';

const app = express();
const PORT = 3080;

app.get("/", (req, res) => {
    const message = `Hello World, I am running on Pod ${os.hostname()}`;
    res.send(message);
});

app.listen(PORT, () => {
    console.log(`Web Server is listening at port ${PORT}`);
});

console.log(os.hostname());

