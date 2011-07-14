widget = {
  resize: function () {
    var iframe = window.frameElement;
    iframe.height = document.height;
    console.log("resized " + widget.identifier);
  }
};

widget.identifier = window.frameElement.id;
