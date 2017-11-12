//back end logic
var counter = function(number) {
  for (var index = 1; index <= number; index += 1) {
  alert("The current number is: " + index );
}
}


// front end logic
$(document).ready(function() {
  $("form#ping-pong").submit(function(event) {
    event.preventDefault();
    var number = parseInt($("#number").val());
    var result = counter(number);
    console.log(number);
    // $("#result").text(result);
  });
});
