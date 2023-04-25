var webSocket;
var messageDiv; 
var textInput;
var hostURL;
var websocketReadyStateArray;
var connectBtn;
var disconnectBtn;
function init(){
    messageDiv = document.getElementById("message"); 
    textInput = document.getElementById("text");
    hostURL = "wss://s8841.nyc1.piesocket.com/v3/a1?api_key=093gyWdCE4Z8r86m9tAy3Bla2uqmjqomUl8hK6h3";
    websocketReadyStateArray = new Array('Connecting', 'Connected', 'Closing', 'Closed');
    connectBtn = document.getElementById('connect');
    disconnectBtn = document.getElementById('disconnect');
    connectBtn.disabled = false;
    sendTextBtn.disabled = true;
    sendJSONObjectBtn.disabled = true;
    disconnectBtn.disabled = true;
    setTimeout(connect, 1000)
}
function connect(){
    try{
        webSocket = new WebSocket(hostURL);
        messageDiv.innerHTML = "<p>Socket status:" + websocketReadyStateArray[webSocket.readyState] + "</p>";
        webSocket.onopen = function(){
            messageDiv.innerHTML += "<p>Socket status:" + websocketReadyStateArray[webSocket.readyState] + "</p>";
            connectBtn.disabled = true;
            disconnectBtn.disabled = false;
        }
        webSocket.onmessage = function(msg){
            messageDiv.innerHTML += "<p>Server response : " + msg.data + "</p>";
            if(msg.data == "close")
            {
                window.close('','_parent','');
            }
            if(msg.data.includes("add"))
            {
                console.log("Add test")
                const myArray = text.split(":");
                console.log(myArray[1]);
            }
        }
        webSocket.onclose = function(){
            messageDiv.innerHTML += "<p>Socket status:" + websocketReadyStateArray[webSocket.readyState] + "</p>";
            connectBtn.disabled = false;
            disconnectBtn.disabled = true;
        }
    }catch(exception){
        messageDiv.innerHTML += 'Exception happen, ' + exception;
    }
}
function selectAll(){
    textInput.select();
}
function disconnect(){
    webSocket.close();
}