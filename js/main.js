// main.js
var imgArray = [
    'images/powershell.png',
    'images/ai.png',
    'images/azure.png'],
    curIndex = 0;
    imgDuration = 3000;

function rotateImage() {
    document.getElementById('imageRotator').className += "fadeOut";
    setTimeout(function() {
        document.getElementById('imageRotator').src = imgArray[curIndex];
        document.getElementById('imageRotator').className = "";
    },1000);
    curIndex++;
    if (curIndex == imgArray.length) { curIndex = 0; }
    setTimeout(rotateImage, imgDuration);
}

// Fade in xterm
function intro() {
    $('#welcomeTerm').fadeIn(4000, function () {
        $('#termTxt').fadeIn(8000, function () {
            $('#welcomeTerm').fadeOut(12000);
            $('nav').fadeIn(14000);
        });
    });
};

$('#whoamiMenuItem').click(function () {
    $('.waiBackground').fadeIn(6000);
    $('#wai, .waiText').show();
    $('#devops, #contact').hide();
    $('p').fadeIn(3000);
    $('.waiBackground').fadeOut(12000);
});

$('#devopsMenuItem').click(function () {
        $('#devops').show();
        $('#welcomeTerm, #wai, #contact').hide();
        rotateImage();       
});


$('#contactMenuItem').click(function () {
    $('#contact').fadeIn(6000)
    $('#wai, #devops').hide();
});

$(document).ready(function () {
    intro();
})
