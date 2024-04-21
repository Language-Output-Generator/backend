import express from "express";
import { PORT } from "./config.js";

const app = express();

app.get('/test', (req, res) => {
    console.log(req);
    return res.status(234).send('Hey beech!');
});

app.listen(PORT, () => {
    console.log(`App is listening to port: ${PORT}`);
});