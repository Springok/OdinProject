
var perRowNumber = 24;

$(document).ready(function(){

  normalPaint();

});



function createGrid(gridRowNumber){

  $container = $('.container');

  for(var i=0; i < gridRowNumber * gridRowNumber; i++)
  {
    $container.append('<div class="square"></div>');
  };

  var squareWidth = $container.width()/gridRowNumber;
  $('.square').css({"width": squareWidth,"height": squareWidth});
  $(".grid_label").html("Draw by hovering mouse over " + gridRowNumber + " x " + gridRowNumber + " grid below:");
};


function updateGrid (){

  perRowNumber = parseInt(prompt("Please enter the row number between 0~64", 24),10);

  if(perRowNumber > 0 && perRowNumber <= 64){
    $('.square').remove();
    createGrid(perRowNumber);

  } else {

    alert('Not a valid input');
    perRowNumber = 24;
  }

  $('.container').css("background-color","#fff");
  normalPaint();
}

function reset(){
  $('.square').css({
    "background-color":"#eee",
    "opacity":"1"
    });
};


function normalPaint(){

  if($('.square').size() !== 0){    //From another mode switches to normalpaint run this method reset the grid.
    $('.square').remove();
  }

  createGrid(perRowNumber);
  $('.square').hover(function(){
    $(this).css("background-color","#666");
  });

}


function colorPaint(){

 updateGrid();
 $('.square').hover(function(){
    $(this).css("background-color", getRandomColor());
  });
}

function gradientPaint(){

  updateGrid();
  $('.container').css("background-color","black"); // For gradientPaint only
  $('.square').hover(
      function(){
        var opacityNow = $(this).css('opacity');
        if(opacityNow > 0 ){
          $(this).css("opacity", opacityNow - 0.1);
        }

      });

}

function getRandomColor() {
    var letters = '0123456789ABCDEF'.split('');
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}



