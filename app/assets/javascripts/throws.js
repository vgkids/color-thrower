// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.


3
4
// A $( document ).ready() block.
$( document ).ready(function() {

(function poll() {
    $.ajax({
        url: "/throws/last",
        type: "GET",
        success: function(data) {
          console.log("polling");
          // $('#latest-throw-comment').html(data['comment']);
          // $('#latest-throw-name').html(data['name']);
          // $('#latest-throw-hex_color').html(data['hex_color']);
          // $('#latest-throw-created_at').html(data['created_at']);
          var id = data['id']

          var star = `<div id=${id} class='hex-color-visualizer'></div>`;

          if( $(`#${id}`).length ) {
            // do nothing
          } else {
            $("body").append(star);
            $(`#${id}` ).css( 'background-color', `#${data['hex_color']}`)
            var width = $( document ).width();
            var left = Math.floor((Math.random() * width) + 1);
            $(`#${id}` ).css( 'left', `${left}px`)
            $(`#${id}`).animate({
              top: "+=1000",
            }, 5000, function() {
              $(`#${id}` ).remove();
            });
          }
        },
        dataType: "json",
        complete: setTimeout(function() {poll()}, 50),
        timeout: 2000
    })
})();



});