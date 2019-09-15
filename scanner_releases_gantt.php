<?php

  $nav_selected = "SCANNER"; 
  $left_buttons = "YES"; 
  $left_selected = "RELEASESGANTT"; 

  include("./nav.php");
  global $db;

?>
<html>
<head>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load('current', {'packages':['gantt']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

      var data = new google.visualization.DataTable();
      
      data.addColumn('string', 'Task ID');
      data.addColumn('string', 'Task Name');
      data.addColumn('string', 'Type');
      data.addColumn('date', 'Start Date');
      data.addColumn('date', 'End Date');
      data.addColumn('number', 'Duration');
      data.addColumn('number', 'Percent Complete');
      data.addColumn('string', 'Dependencies');

      data.addRows([
        <?php 
          $query = "SELECT * from releases";
          $exec = mysqli_query($db,$query);
          while($row = mysqli_fetch_array($exec)){
            if ($row['status']=="Draft"){
              $status = 25;
            }elseif($row['status']=="Active"){
              $status = 50;
            }elseif($row['status']=="Completed"){
              $status = 75;
            }else{
              $status = 100;
            };
            $startdt = explode('-',$row['open_date']);
            $enddt = explode('-',$row['rtm_date']);
            echo "['".$row['id']."','"
                  .$row['name']."','"
                  .$row['type']."',
                  new Date(".$startdt[0].", ".$startdt[1].", ".$startdt[2]."),
                  new Date(".$enddt[0].", ".$enddt[1].", ".$enddt[2]."),null,"
                  .$status.",null],";
          };
        ?>
      ]);

      var options = {
        height: 1000,
        width: 1750,
        gantt: {
          trackHeight: 30
        }
      };

      var chart = new google.visualization.Gantt(document.getElementById('chart_div'));

      chart.draw(data, options);
    }
  </script>
</head>
<body>
  <div id="chart_div"></div>
</body>
</html>

  <?php include("./footer.php"); ?>
