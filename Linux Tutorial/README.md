# Setup tutorial

### Step 1: Refresh the Software Repositories

Ensure you’re working with the latest software version available.
Launch a terminal window, and enter the following:

    sudo apt-get update

### Step 2: Install Squid Package on Ubuntu

To install Squid, run the command:
        
     sudo apt-get install squid
     
Once the Squid is installed, you can check the status of the Squid service with the following command:


     systemctl status squid
     
     
 ![image](https://user-images.githubusercontent.com/46167070/115952118-a43ea600-a4e4-11eb-803f-f1673d550e46.png)
    
    
   ### Step 3 : Set Up IP Based Authentication
   
        ip addr show
   ![image](https://user-images.githubusercontent.com/46167070/115953392-7dd03900-a4eb-11eb-8c3f-c5a2a74278aa.png)
   
   
   
    
There are several ways you can restrict the client to access the internet. In this section, we will set up Squid to authenticate based on Client's IP address,You can do it by editing Squid default configuration file:

        sudo vim /etc/squid/squid.conf

and then Press i to insert in Configration file and navigate **INSERT YOUR OWN RULE(S) HERE TO ALLOW ACCESS FROM YOUR CLIENTS**

![image](https://user-images.githubusercontent.com/46167070/115954416-3cdb2300-a4f1-11eb-88d3-6f0e180822f8.png)


Then press ESC then :wq to save your Configrations.

### For Blocking Websites

    sudo vim /etc/squid/blocksite



![image](https://user-images.githubusercontent.com/46167070/115954892-bb38c480-a4f3-11eb-86f5-9cfd65975c3b.png)


Then press ESC then :wq to save your Blocked Website.


### Restart the Squid service by entering:
     systemctl restart squid




# Verify Squid Proxy

Next, you will need to define your Proxy server in your Mozilla web browser.

Go to the client system, open the Mozilla web browser, and click on the Edit => Preferences as shown below:

Click on the Network Settings section and click on the Settings. You should see the following page:
