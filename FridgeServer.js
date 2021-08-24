const express = require('express');
var request = require('request');
const fs = require('fs');
var app = express();

app.use(express.urlencoded({ extended: true }))
app.use(express.json());

const port = 3678;
const host = '0.0.0.0';


app.get('/getLastEvent', (req, res) => 
{
  fext = 0;
  jsondoc = "eventData" + fext + ".json";
  while (fs.existsSync('./' + jsondoc)) 
  {
    fext = fext + 1;
    jsondoc = "eventData" + fext + ".json";
  }
  ext = fext - 1;
  var jsondoc = "eventData" + ext + ".json"
  
  if (fext == 0) 
  {
    res.send("No events has been received yet");
  }
  var data = fs.readFileSync('./' + jsondoc, 'utf8');
  const obj = JSON.parse(data)
  res.send(obj);
})



app.get('/getEvent/:id', (req, res) => 
{
  var jsondoc = "eventData" + req.params.id + ".json"

  if (fs.existsSync('./' + jsondoc)) 
  {
    var data = fs.readFileSync('./' + jsondoc, 'utf8');
    const obj = JSON.parse(data)
    res.send(obj)
  }
  else
  {
    res.send("No event received yet");
  }
})

app.post('/postNewEvent', function (req, res, body) 
{

  var fext = 0;
  var jsonEvent = "eventData" + fext + ".json";
  while (fs.existsSync('./' + jsonEvent)) 
  {
    fext = fext + 1;
    jsonEvent = "eventData" + fext + ".json";
  }

  jsonEvent = "eventData" + fext + ".json";

  var jsonn = req.body
  const data = JSON.stringify(jsonn);
  console.log(data)

  fs.writeFileSync(jsonEvent,data);
  res.send(`Event Received ${fext}`);
});


app.listen(port);
console.log(`Running on http://${host}:${port}`);




















