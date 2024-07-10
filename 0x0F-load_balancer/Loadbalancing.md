Load balancing
HAproxy and load balancing
HAproxy = High availabilty proxy it boost server performance and reliablity by distributing the workload

through multiple servers.

Termnilogies and concepts
ACL - Accessd Control List they are used to perform set of actions either blocking a request or selecting a backend server
bases on a test rresult.

BACKEND - A set of server that recieves forward request to select which load balancing algorithm to use and a list of server

FRONTEND - Defines how many request should be sent to a backend server and what should be sent to a backend coserver and it contains

sets of ip {the Ip to connect to }
ACL {Action to perform}
use_backend {which set of server to use }
A frontend can be configured into diffrent types of network

Types of Load balancer
NO LOAD BALANCER - This type of configuration doesnt have a load balancer and it communication is direct USER -----> INTERNET------->WEB-SERVER--------->DATABASE This type of configuration has an issue becuase of redundacy and spof if one of the componet fails the system fails and the user wont be able to connect throughout the downtime

LAYER 4 (TRANSPORT LAYER) This type of configuration uses a transportation layer such as TCP/UDP, it uses the ip range and port to traffic request to the server *USER -----> INTERNET-------> LOAD-BALANCER -----> WEB-01:80 OR WEB-02:06 --------->DATABASE* if a request with port 08 is served the load balancer redirect it to web-01 but if another request is serveed and its not port 80 the request goes to web-02 and both server must be serving identical content and both server connect to the same database. This type of configuration is the simplest form of configuration

LAYER 7 (APPLICATION LAYER) This is a more Complex configuaration that forwards different configuration to diffrent backend server based on the request content of the user, multiple servers are being run under thesame domain-name and port

USER -----> INTERNET-------> LOAD-BALANCER -----> BACKEND_WEB-01 OR BLOG_WEBSERVER --------->DATABASE

