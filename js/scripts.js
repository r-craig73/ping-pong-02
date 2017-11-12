//back end logic
var counter = function(number) {
  var countedNumbers = [];
  for (var index = 1; index <= number; index += 1) {
  if (index % 3 === 0 && index % 5 === 0){
    countedNumbers.push("PING PONG!");
  } else if (index % 3 === 0){
    countedNumbers.push("ping");
  } else if (index % 5 === 0){
    countedNumbers.push("pong");
  } else {
    countedNumbers.push(index);
  }
}
console.log(countedNumbers.join(" "));
return (countedNumbers);
}


// front end logic
$(document).ready(function() {
  $("form#ping-pong").submit(function(event) {
    event.preventDefault();
    $(".unstyled").empty();
    var number = parseInt($("#number").val());
    var results = counter(number);
    results.forEach(function(result){
      $(".unstyled").append("<li>" + result + "</li>")
    })
    $("#result").show();
  });
});
