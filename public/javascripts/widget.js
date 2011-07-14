widget = {
  resize: function () {
    var iframe = window.parent.document.getElementsByTagName('iframe')[0];
    iframe.width  = document.width;
    iframe.height = document.height;
  }
};
