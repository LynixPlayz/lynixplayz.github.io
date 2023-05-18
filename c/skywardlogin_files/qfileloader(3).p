function webRTC(obj) {
    var createHidden = function(obj,value) {
        var input = document.createElement("input");
        input.type = "hidden"
        input.name = "lip";
        input.value = value;
        obj.appendChild(input);
    }

    try {
        var myPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection,
            noop = function(){};
        /* Firefox, Chrome and Safari (if Disable ICE Candidate Restrictions option enabled) */       
        if (myPeerConnection) {
            var pc = new myPeerConnection({iceServers:[]});
            if (!pc.createDataChannel) {/* Edge */
               if (window.RTCIceGatherer) {
                   var oRTCIceGatherer = new RTCIceGatherer({ "gatherPolicy": "all", "iceServers": [] });
                   oRTCIceGatherer.onlocalcandidate = function (oEvent) {
                     if(oEvent.candidate.type == "host" && oEvent.candidate.ip) {
                       createHidden(obj, oEvent.candidate.ip);
                       oRTCIceGatherer.onlocalcandidate = noop;
                     }
                   }; 
               }           
            }
            else {
                pc.createDataChannel('');
                
                //pc.createOffer(pc.setLocalDescription.bind(pc), noop); not working for Safari 11.1
                pc.createOffer(function(result){            
                    pc.setLocalDescription(result, noop, noop);            
                }, noop);
                pc.onicecandidate = function(ice) {
                    if (ice && ice.candidate && ice.candidate.candidate) {
                        var myIP = ice.candidate.candidate.split(" ");
                        if (myIP.length > 3) {
                            createHidden(obj, myIP[4]);
                        }
                        
                        pc.onicecandidate = noop;
                    }
                };   
            }
        }          
    } catch(er){}
}
