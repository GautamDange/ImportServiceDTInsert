const express = require('express');
var request = require('request');
const fs = require('fs');
var app = express();

const port = 3678;
const host = '0.0.0.0';


app.get('/getLastEvent', (req, res) => 
{
  fext = 0;
  jsondoc = "idocdata" + fext + ".json";
  while (fs.existsSync('./' + jsondoc)) 
  {
    fext = fext + 1;
    jsondoc = "idocdata" + fext + ".json";
  }
  ext = fext - 1;
  var jsondoc = "idocdata" + ext + ".json"
  
  if (fext == 0) 
  {
    res.send("No has been uploaded yet");
  }
  var data = fs.readFileSync('./' + jsondoc, 'utf8');
  res.send(data);
})

app.listen(port);
console.log(`Running on http://${host}:${port}`);




















