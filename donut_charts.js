var ctx2 = document.getElementById("myChart2").getContext("2d");
var data2 = [
  {
      value: 151,
      color:"pink",
      highlight: "red",
      label: "Ladies"
  },
  {
      value: 104,
      color: "lightblue",
      highlight: "blue",
      label: "Gents"
  }
  ]
var myChart2 = new Chart(ctx2).Doughnut(data2);

$( "#data6" ).click(function() {
  myChart2.segments[0].value = 151;
  myChart2.segments[1].value = 104;
  myChart2.update();
});

// digipres
$( "#data7" ).click(function() {
  myChart2.segments[0].value = 14;
  myChart2.segments[1].value = 4;
  myChart2.update();
});

// diyca
$( "#data8" ).click(function() {
  myChart2.segments[0].value = 19;
  myChart2.segments[1].value = 4;
  myChart2.update();
});

// EIA
$( "#data9" ).click(function() {
  myChart2.segments[0].value = 6;
  myChart2.segments[1].value = 6;
  myChart2.update();
});

$( "#data10" ).click(function() {
  myChart2.segments[0].value = 20;
  myChart2.segments[1].value = 10;
  myChart2.update();
});

var ctx = document.getElementById("myChart").getContext("2d");
var data = [
  {
      value: 118,
      color:"pink",
      highlight: "red",
      label: "Ladies"
  },
  {
      value: 108,
      color: "lightblue",
      highlight: "blue",
      label: "Gents"
  }
  ]
var myChart = new Chart(ctx).Doughnut(data);

$( "#data" ).click(function() {
  myChart.segments[0].value = 118;
  myChart.segments[1].value = 108;
  myChart.update();
});

$( "#data2" ).click(function() {
  myChart.segments[0].value = 96;
  myChart.segments[1].value = 88;
  myChart.update();
});

$( "#data3" ).click(function() {
  myChart.segments[0].value = 96;
  myChart.segments[1].value = 91;
  myChart.update();
});

$( "#data4" ).click(function() {
  myChart.segments[0].value = 31.5;
  myChart.segments[1].value = 37.9;
  myChart.update();
});

$( "#data5" ).click(function() {
  myChart.segments[0].value = 25.33;
  myChart.segments[1].value = 29.6;
  myChart.update();
});

