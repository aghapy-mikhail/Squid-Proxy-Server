# Squid-Proxy-Server


## About Squid

Squid is a Linux-based  caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. <br>
It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages. <br>
Squid has extensive access controls and makes a great server accelerator. It runs on most available operating systems, including Windows and is licensed under the GNU GPL.<br> 
**The Squid proxy server is used** for filtering traffic, security, and DNS lookups.



## How Caching Works
 Squid can speed up a web server by caching resources. The Squid Proxy allows a server to cache frequently visited web .<br>
 When the user requests a web page or file, the request goes directly to the proxy server an intermediary device  between the user’s device and the internet.<br> The proxy server pulls up the resources and relays them to the user.

## How Accelerator Work 


 Accelerator mode is a different operating style where instead of acting as a proxy, Squid acts as an origin web server. <br>
 Instead of serving up fixed (static) documents, though, it fetches documents from one or more origin servers. <br>
**It is called an accelerator since :** 

      it can serve up documents faster than classic httpd servers.
     which keep all pages on disk and tend to do more computation per request. 



1-any request comes from any user of a particular web page, the Squid checks the internal cache in it to see if this page contains,
2-squid compares the (MD5) part of the address (URL). <br> 

3-**If the page is in the cache** it checks the expire time of the page. <br> 
As each web page on the Internet has a validity period determined by the owner of the site itself and 
depends on the speed of updating the pages of that site.

   3.A-If they are expired <br>
the scripts transfer the request to the main server after changing the source addresses to hide the real address 
for users as a preventive and security measure .<br> for the user and bring The request to the user and save a copy of it in his cache. 

3.B-if the page is still effective and not expired (Still fresh) he sends it directly to the user
who requested it <br> without having to return to the original server. Reduce network traffic as we mentioned. <br>


4-Either if the requested page is not in cache, or it is expired or incorrect in some way, then the scudger brings it from the original server and checks the cacheability in it. If it is cacheable, he saved a copy of it in his cache, otherwise he cannot save a copy From that page, and every time this page is requested, it will be forced to fetch it from the original server, as in the following pictures that illustrate the work of the squad: 








## Why run an accelerator?

These are some reasons why you might want to run a web accelerator using Squid:

    Server performance. Squid performs faster than the original web server, 
    so you would like to make Squid the front end server, and put the original one behind it.
    
    Network performance. The origin server can be on a slow network, such as across international links.
    A web accelerator or mirror closer to the rest of the Net, physically located in the US for example,
    will make your web site faster for the rest of the world.

    Squid is easier to maintain than a regular httpd since you only have to add pages 
    on the origin server and the mirror will catch up. 
    You might want to put Expires headers in your HTTP responses to make sure that the mirror is not serving stale data.

    Anything that requires real intelligence on the part of the web server, such as CGI scripts, 
    will be forwarded on to the origin server.
   
   
## Security

You can use Squid to hide an internal server, or one is that is prone to attack, behind an accelerator. 
Web users visiting your site will never touch the internal server. If your web server is vulnerable to data-driven attacks, such as invalid URLs, Squid will either complain about them, or you can set up ACLs to block them off.
It is possible to use Squid together with a firewall to secure internal networks from the outside using a proxy cache. <br>

The firewall denies all clients access to external services except Squid. All Web connections must be established by the proxy. 
With this configuration, Squid completely controls Web access.<br>

If the firewall configuration includes a DMZ, the proxy should operate within this zone.
This simplifies the configuration of the clients, because in this case, they do not need any information about the proxy.

    
    
##  disadvantage 
is that the origin server will not know the original IP address of the clients, except through the X-Forwarded-For HTTP header.<br>
This will affect logging and visitor analysis, as well as document protection access control lists.<br>
You might want to move this log analysis to your accelerator instead.<br>
it because it has no graphical interface for the configuration of the services, everything has to be done by instructions in the text file and getting an error is difficult with many instruction lines. 




# Prerequisites

    1-Ubuntu operating system
    2-Access to a terminal window/command line (Ctrl-Alt-T)
    3-An Ubuntu user with root or sudo privileges
    4-The apt package installer, included by default


# Configuring Squid as an Accelerator 





# a fully-featured HTTP/1.1 proxy.
Squid offers a rich access control, authorization and logging environment to develop web proxy and content serving applications. Squid offers a rich set of traffic optimization options, most of which are enabled by default for simpler installation and high performance. 


https://www.slideshare.net/rohitphulsunge/squid-server

## node-http-proxy vs Squid: What are the differences?

node-http-proxy: A full-featured http proxy for node.js. node-http-proxy is an HTTP programmable proxying library that supports websockets. It is suitable for implementing components such as proxies and load balancers; Squid: A caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. Squid reduces bandwidth and improves response times by caching and reusing frequently-requested web pages. Squid has extensive access controls and makes a great server accelerator. It runs on most available operating systems, including Windows and is licensed under the GNU GPL.

node-http-proxy can be classified as a tool in the "Load Balancer / Reverse Proxy" category, while Squid is grouped under "Web Cache".

https://stackshare.io/stackups/node-http-proxy-vs-squid

https://www.toolbox.com/tech/operating-systems/question/block-websites-using-squid-proxy-020812/

# How to deny a user from accessing particular site?

https://servercomputing.blogspot.com/2012/01/block-facebook-in-squid-proxy-server.html




Here the post will show you how to block complete "http" and "https" facebook access in office times in your squid proxy server. Create an acl with facebook domain (dstdomain) and deny both http and https access.










# Installing Squid Proxy on Ubuntu 




https://phoenixnap.com/kb/setup-install-squid-proxy-server-ubuntu


https://projects.horms.net/projects/redundant_linux_paper/related/squid/detail/accel.html


