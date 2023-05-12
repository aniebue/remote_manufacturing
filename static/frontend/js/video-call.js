console.log("video-call.js");

const params = new Proxy(new URLSearchParams(window.location.search), {
  get: (searchParams, prop) => searchParams.get(prop),
});
let videoNeed = params.video == 1 ? true : false;

const configuration = {
  iceServers: [
    { urls: ["stun:stun.l.google.com:19302", "stun:stun1.l.google.com:19302"] },
    // {
    //   url: "turn:numb.viagenie.ca",
    //   credential: "muazkh",
    //   username: "webrtc@live.com",
    // },
    // {
    //   url: "turn:192.158.29.39:3478?transport=udp",
    //   credential: "JZEOEt2V3Qb0y27GRntt2u2PAYA=",
    //   username: "28224511:1379330808",
    // },
  ],
};

// video calling
var localStream = new MediaStream();
const constraints = videoNeed ? { video: true, audio: true } : { video: false, audio: true };

var peer = new RTCPeerConnection(configuration);
var dc = peer.createDataChannel("channel");


// console.log(localVideo);
const startMediaAccess = (from = null) => {
  var userMedia = navigator.mediaDevices
    .getUserMedia(constraints)
    .then((stream) => {
      console.log(stream);
      const localVideo = document.getElementById("local-video");

      localStream = stream;
      localVideo.srcObject = localStream;
      localVideo.muted = true;
      peer.addStream(localStream);
    })
    .catch((error) => {
      console.log("Error while accessing media devices.", error);
    });


    dc.addEventListener("open", () => {
      console.log("connection opened.");
    });
    
    dc.addEventListener("message", (event) => {
      console.log(event.data);
    });
        
    peer.onicecandidate = (e) => {
      if(e.candidate == null) return;
      // console.log(e.candidate); // need to send it to server as candidate
      sendWsData(from ? from : toUser, -1, {info_type: 'candidate', candidate: e.candidate});
    }
    
    peer.onaddstream = (e) => {
      console.log(e, e.stream);
      const remoteVideo = document.getElementById("remote-video");

      remoteVideo.srcObject = e.stream;
    }
}

const startCall = (from = null) => {
  peer.createOffer(offer => {
    peer.setLocalDescription(offer);
    sendWsData(from ? from : toUser, -1, {info_type: 'offer', offer: offer});
  }, (error) => console.log(error)).then(a => console.log("set successfully."));

}

const receiveVideoCallData = (data, from = null) => {
  if(data.info_type == 'offer') {
    peer.setRemoteDescription(data.offer);
    peer.createAnswer(answer => {
      peer.setLocalDescription(answer);
      sendWsData(from ? from : toUser, -1, {info_type: 'answer', answer: answer});
      const callStatus = document.getElementById('call-status');
      if (callStatus) callStatus.innerHTML = "Connected";
    }, (error) => console.log(error)).then(a => console.log("set successfully."))
  } else if(data.info_type == 'answer') {
    peer.setRemoteDescription(data.answer);
    console.log("answer");
    const callStatus = document.getElementById('call-status');
    if (callStatus) callStatus.innerHTML = "Connected";
  } else if(data.info_type == 'candidate') {
    peer.addIceCandidate(data.candidate);
    console.log("candidate")
  }
}

const endCall = () => {
  sendWsData(toUser, -2, {info_type: 'end_call'})
  const urlPieces = window.location.pathname.split('/');
  if(window.location.pathname.includes('/video-call')) {
    setTimeout(() => {
      const userType = urlPieces[1];
      window.location.href=`/${userType}/contact`;
    }, 500)
  }
}
const endCall2 = (from = null) => {
  sendWsData(from ? from : toUser, -2, {info_type: 'end_call_2'});
  window.location.reload();
}

if(window.location.pathname.includes('/video-call')) {
  setTimeout(() => sendWsData(toUser, -2, {info_type: videoNeed ? 'video_call' : 'voice_call'}), 5000);
  startMediaAccess();
}
