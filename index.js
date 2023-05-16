const express = require('express');
const app = express();

const WebSocket = require('ws')
    , Pws = require('pws')

const pws = Pws("wss://s8841.nyc1.piesocket.com/v3/1?api_key=093gyWdCE4Z8r86m9tAy3Bla2uqmjqomUl8hK6h3", WebSocket)

var list = [];

pws.on('message', function message(data) {
    console.log('received: %s', data);
    list += data;
  });

  const server = app.listen(7000, () => {
    console.log(`Express running → PORT ${server.address().port}`);
  });

  app.get('/', (req, res) => {
    res.send(list);
  });