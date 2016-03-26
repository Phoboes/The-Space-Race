var get_numbers = function(input) {
    return input.match(/[0-9]+/g);
}



// Regex strips all non integer values - converted to integer from string below for score comparison. -K
$(document).ready(function(){

scoreEvaluation();
scoreForm();

});


var playerNuke = function(){
    app.score = 0;
    app.totalKillCount = 0;
    app.player.kill();
            app.stateText.text="  CHEATER. \n RELOADING.";
            app.stateText.visible = true;
            app.stateText.fill = '#ff0000';
        setTimeout(function(){
          location.reload();
        }, 3000);
    console.log("Naughty.");
  };


// Used at end game to determine whether a score is available for submission.
var scoreForm = function(){

  var fifthScoreText = $('.scoreList p:nth-child(5)').text();
  var fifthScore =  parseInt( get_numbers(fifthScoreText) );

  if( app.score > fifthScore){
      app.scoreLeading = true;
  } else {
    app.scoreLeading = false
  }
}; // End scoreForm


// New Score evaluation
scoreEvaluation = function(){

  if( app.score === app.totalKillCount * 20 && app.score/20 === app.totalKillCount && app.totalKillCount <= app.aliensSpawned){
    app.score = app.totalKillCount * 20
    scoreForm();
  } else {
      playerNuke();
    };


  // };
}; // End score evaluation


