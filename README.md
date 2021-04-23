# Squid-Proxy-Server-
## Squid: Optimising Web Delivery

Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages. Squid has extensive access controls and makes a great server accelerator. It runs on most available operating systems, including Windows and is licensed under the GNU GPL.


Squid is a Linux-based proxy application. The Squid proxy server is used for filtering traffic, security, and DNS lookups.

# How Caching Works
 Squid can speed up a web server by caching resources. The Squid Proxy allows a server to cache frequently visited web pages. When the user requests a web page or file, the request goes directly to the proxy server — an intermediary device between the user’s device and the internet. The proxy server pulls up the resources and relays them to the user.



# How Accelerator Work 

https://projects.horms.net/projects/redundant_linux_paper/related/squid/detail/accel.html

 Accelerator mode is a different operating style where instead of acting as a proxy, Squid acts as an origin web server. Instead of serving up fixed (static) documents, though, it fetches documents from one or more origin servers. It is called an accelerator since it can serve up documents faster than classic httpd servers, which keep all pages on disk and tend to do more computation per request. 



# Why run an accelerator?

These are some reasons why you might want to run a web accelerator using Squid:

    Server performance. Squid performs faster than the original web server, so you would like to make Squid the front end server, and put the original one behind it.
    
    Network performance. The origin server can be on a slow network, such as across international links. A web accelerator or mirror closer to the rest of the Net, physically located in the US for example, will make your web site faster for the rest of the world.

    Squid is easier to maintain than a regular httpd since you only have to add pages on the origin server and the mirror will catch up. You might want to put Expires headers in your HTTP responses to make sure that the mirror is not serving stale data.

    Anything that requires real intelligence on the part of the web server, such as CGI scripts, will be forwarded on to the origin server.
   
   
# Security
You can use Squid to hide an internal server, or one is that is prone to attack, behind an accelerator. Web users visiting your site will never touch the internal server. If your web server is vulnerable to data-driven attacks, such as invalid URLs, Squid will either complain about them, or you can set up ACLs to block them off.
It is possible to use Squid together with a firewall to secure internal networks from the outside using a proxy cache. The firewall denies all clients access to external services except Squid. All Web connections must be established by the proxy. With this configuration, Squid completely controls Web access.

If the firewall configuration includes a DMZ, the proxy should operate within this zone. Section 33.6, “Configuring a Transparent Proxy” describes how to implement a transparent proxy. This simplifies the configuration of the clients, because in this case, they do not need any information about the proxy.

    
    
# One disadvantage 
is that the origin server will not know the original IP address of the clients, except through the X-Forwarded-For HTTP header. This will affect logging and visitor analysis, as well as document protection access control lists. You might want to move this log analysis to your accelerator instead. 





# Prerequisites

    An Ubuntu operating system
    Access to a terminal window/command line (Ctrl-Alt-T)
    An Ubuntu user with root or sudo privileges
    The apt package installer, included by default


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




