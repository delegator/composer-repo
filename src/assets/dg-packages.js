$(function() {
  $.timeago.settings.refreshMillis = 5000;
  $("time.timeago").timeago();
  $("#search").hideseek({
    attribute: "data-title",
    ignore: ".search-ignore",
    list: "#package-list",
    nodata: "No results."
  });
  if (!window.location.hash) {
    $("#search").focus();
  }
});
