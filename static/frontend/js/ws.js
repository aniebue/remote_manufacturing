console.log("Websocket file loaded successfully");
const loc = window.location;
const wsProtocol = (loc.protocol == "https:") ? 'wss' : 'ws';
const wsUrl = `${wsProtocol}://${loc.host}/ws/chat`;

// websockets codes
const ws = new WebSocket(wsUrl);
ws.onopen = (event) => {
  console.log("WebSocket connected...");
  console.log(event);
};
ws.onmessage = (event) => {
  console.log("WebSocket message recieved...");
  console.log(event);
  const data = JSON.parse(event.data);
  try {
    if (data.type >= 0) receiveData(data.from, data.type, data.msg);
    else if (data.type == -1) receiveVideoCallData(data.msg, data.from);
    else if (data.type == -2) {
      if(data.msg.info_type == 'end_call') {
        const urlPieces = window.location.pathname.split('/');
        if(window.location.pathname.includes('/video-call')) {
          setTimeout(() => {
            const userType = urlPieces[1];
            window.location.href=`/${userType}/contact`;
          }, 500)
        }
      } else if(data.msg.info_type == 'voice_call_2') {
        showCall2(data.from, data.type, data.msg);
      } else if(data.msg.info_type == 'end_call_2') {
        window.location.reload();
      }else showCall(data.from, data.type, data.msg);
    }
  } catch (error) {
    console.log("Error while receiving ws message: " + error.message);
  }
};
ws.onerror = (event) => {
  console.log("WebSocket error occured...");
  console.log(event);
};
ws.onclose = (event) => {
  console.log("WebSocket connection closed...");
  console.log(event);
};

const sendWsData = (to, type, msg) => {
  data = JSON.stringify({ to: to, type: type, msg: msg });
  ws.send(data);
};

const chatAudio = new Audio("/static/frontend/sounds/calls.mp3");
const playSound = () => chatAudio.play().catch(function(error) {console.log(error.message);});

const showCall = (from, type, msg) => {
  const urlPieces = window.location.pathname.split('/');
  if(!window.location.pathname.includes('/video-call') && !(urlPieces[urlPieces.length-1] == from)) {
    const userType = urlPieces[1]
    showToast(`${msg.info_type == 'video_call' ? 'Video' : 'Voice'} Call`, `<a href="/${userType}/video-call/${from}?${msg.info_type == 'video_call' ? 'video=1' : ''}">Pick call</a>`);
    playSound();
    console.log(data);
  } else {
    startCall();
  }
}

const showCall2 = (from, type, msg) => {
  const htmlCont = `
    <div>
      <audio id="local-video" autoplay></audio>&nbsp;<audio id="remote-video" autoplay></audio>
      <a href="#" onclick="PickCall2(this, ${from})">Pick call</a>
    </div>
  `;
  showToast(`Voice Call`, htmlCont);
  startMediaAccess(from);
  playSound();
}
const PickCall2 = (btn, from) => {
  chatAudio.pause(); //.catch(function(error) {console.log(error.message);});
  chatAudio.currentTime = 0;
  const btnParent = btn.parentNode;
  btn.remove();
  const htmlCont = `
    <span style="font-size: 25px;margin: 0 5px;"><i class="fa fa-microphone" aria-hidden="true"></i></span>
    <span> <a title="End Call" class="btn btn-danger" onclick="endCall2(${from});" href="javascript:void(0);">End Call</a> </span>
  `;
  btnParent.insertAdjacentHTML("beforeend", htmlCont);
  startCall(from);
}

const showToast = (title, msg) => {
  const html = `
  <div class="toast show" role="alert" aria-live="assertive" aria-atomic="true" style="margin: 15px;">
    <div class="toast-header">
      <!-- <img src="..." class="rounded me-2" alt="${title}"> -->
      <strong class="me-auto">${title}</strong>
      <!-- <small>11 mins ago</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button> -->
    </div>
    <div class="toast-body">
      ${msg}
    </div>
  </div>`;
  document.getElementById("toasts").insertAdjacentHTML("beforeend", html);
};