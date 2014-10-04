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

// second

  var ctx = document.getElementById("myChart2").getContext("2d");
  var data2 = [
    {
        value: 96,
        color:"pink",
        highlight: "red",
        label: "Ladies"
    },
    {
        value: 88,
        color: "lightblue",
        highlight: "blue",
        label: "Gents"
    }
    ]
  var myChart2 = new Chart(ctx).Doughnut(data2);

  // third

  var ctx = document.getElementById("myChart3").getContext("2d");
  var data3 = [
    {
        value: 96,
        color:"pink",
        highlight: "red",
        label: "Ladies"
    },
    {
        value: 91,
        color: "lightblue",
        highlight: "blue",
        label: "Gents"
    }
    ]
  var myChart3 = new Chart(ctx).Doughnut(data3);

  // fourth

  var ctx = document.getElementById("myChart4").getContext("2d");
  var data4 = [
    {
        value: 31.5,
        color:"pink",
        highlight: "red",
        label: "Ladies"
    },
    {
        value: 37.9,
        color: "lightblue",
        highlight: "blue",
        label: "Gents"
    }
    ]
  var myChart4 = new Chart(ctx).Doughnut(data4);

    // fifth

  var ctx = document.getElementById("myChart5").getContext("2d");
  var data5 = [
    {
        value: 25.33,
        color:"pink",
        highlight: "red",
        label: "Ladies"
    },
    {
        value: 29.6,
        color: "lightblue",
        highlight: "blue",
        label: "Gents"
    }
    ]
  var myChart5 = new Chart(ctx).Doughnut(data5);
