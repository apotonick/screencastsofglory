//= require jquery
//= require jquery_ujs
//= require_self
//= require_tree .

$(function() {
  $("a[data-event-url]").live("click", function(e) {
    $.ajax({url: $(this).attr("data-event-url")});
    e.preventDefault();
  });
});
