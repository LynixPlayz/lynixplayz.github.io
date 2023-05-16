const express = require('express');
const app = express();

const WebSocket = require('ws')
    , Pws = require('pws')

const pws = Pws(url, WebSocket)

var list = [];

ws.on('message', function message(data) {
    console.log('received: %s', data);
    list += data;
  });

  const server = app.listen(7000, () => {
    console.log(`Express running → PORT ${server.address().port}`);
  });

  app.get('/', (req, res) => {
    res.send(list);
  });