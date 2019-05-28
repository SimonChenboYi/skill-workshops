"use strict";
var example = new Object ()

(function(exports) {
  var QUESTION_MARK_COUNT = 2;

  function question(string) {
    return string + "?".repeat(QUESTION_MARK_COUNT);
  };

  console.log(this)
  exports.question = question;
})(example);





