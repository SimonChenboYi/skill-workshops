console.log('hello!')

$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
   $("#person").html(peopleResponse[0].name);
});

// console.log(1);

//  $.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
//   console.log(2);
//   peopleResponse.map(function(x){console.log("People response:", x.name)});
//   console.log(3);
// });

//  console.log(4);

console.log(3);
var getReturnValue = $.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
   console.log(5);
   console.log(peopleResponse);
  return peopleResponse;
  
});
console.log(getReturnValue);
console.log(4);

// console.log(getReturnValue);