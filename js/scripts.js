//back end logic
var countedNumbers = [];
var counter = function(number) {
  for (var index = 1; index <= number; index += 1) {
  // console.log("The current number is: " + index );
  if (index % 3 === 0 && index % 5 === 0){
    countedNumbers.push("pingpong");
  } else if (index % 3 === 0){
    countedNumbers.push("ping");
  } else if (index % 5 === 0){
  countedNumbers.push("pong");
  } else {
    countedNumbers.push(index);
  }
}
console.log(countedNumbers);
return countedNumbers;
}


// front end logic
$(document).ready(function() {
  $("form#ping-pong").submit(function(event) {
    event.preventDefault();
    var number = parseInt($("#number").val());
    var result = counter(number);
    $("#result").text(result);
  });
});
