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