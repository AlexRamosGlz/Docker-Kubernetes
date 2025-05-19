#!/usr/bin/env node

import express  from "express";

const PORT = 3000;

const server = express();

server.get("/", (req, res) => {
    res.status(200).json({message: "Hola Mundo"});
});

server.listen(PORT, () => {
    console.log(`Listening on ${PORT}`);
})

export default server;
