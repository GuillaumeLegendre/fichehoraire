$(function() {
  var selectList = $('select option');


  selectList.sort(function(a, b) {
    var compA = $(a).text().toUpperCase();
    var compB = $(b).text().toUpperCase();
    compA = (parseInt(compA,10) || compA)
    compB = (parseInt(compB,10) || compB)


    return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
  })


  $('select').html(selectList);
});
