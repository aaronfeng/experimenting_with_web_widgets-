widget = {
  resize: function () {
    var iframe = window.frameElement;
    iframe.width  = document.width;
    iframe.height = document.height;
  }
};

widget.identifier = window.frameElement.id;
