$(function () {
  $.getJSON("proxy", function (messages) {
    $.each(messages, function (idx, value) {
      var li = $("<li>");
      li.text(value);
      li.appendTo("#messages");
    });
  });
});
