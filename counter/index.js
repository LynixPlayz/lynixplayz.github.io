hostURL = "wss://s8841.nyc1.piesocket.com/v3/1?api_key=093gyWdCE4Z8r86m9tAy3Bla2uqmjqomUl8hK6h3";
webSocket = new WebSocket(hostURL);

webSocket.onmessage = function(msg){
    document.getElementById("num").innerHTML = msg.data;
}