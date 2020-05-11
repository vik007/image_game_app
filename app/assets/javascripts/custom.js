var res = "";

// save records using ajax calls
function saveRecords() {
  var form = document.querySelector('form');
  var data = new FormData(form);
  var xhttp = new XMLHttpRequest();

  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      console.log(eval(this.responseText));
      eval(this.responseText).forEach(tableFormat);
      document.getElementById("result-tbody").innerHTML = res + document.getElementById("result-tbody").innerHTML;
      res = "";
    }
  };
  xhttp.open("POST", "/plays", true);
  xhttp.send(data);
}

// format new results
function tableFormat(value, index, array) {
  res = res + "<div class='col'><img src='" + value.image_url + "' width='200' height='200' /><p>"+ value.timer_value + "</p></div>";
}

// get
function pause_countdown(){
  image_url = document.getElementById('image_url_'+timeleft).value
  document.getElementById('image_url').value = image_url
  timer_value = document.getElementById('image_timer_value_'+timeleft).value
  document.getElementById('timer_value').value = timer_value
  document.getElementById('image_box_'+timeleft).style.background = 'red'
  saveRecords();
}
