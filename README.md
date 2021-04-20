# ImportServiceDTInsert
Import service accepts xml idoc document on http://localhost:3456/xmlIDOC1 , 
with POST method. 

Service uses xslt transfer to convert this xml string to JSON object array. 

JSON Array then gets inserted to the Digital Twin at addres : 
http://localhost:8090/k4r-core/api/v0/products/list 
With POST method. 

for Testing 2 xml files are available : 
Shelf19.xml
Shelf17.xml

node server.js  will run the service

to send sample xml to Server, you can either code or use Postman app 
POST method
Address : 
http://localhost:3456/xmlIDOC1


#Digital Twin is required to be in running state in your system
Run digital twin :
git clone 
https://gitlab.com/knowledge4retail/k4r-core-infrastructure.git 
run docker:
docker-compose up 


