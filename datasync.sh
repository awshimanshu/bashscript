###Data sync When new server added into load balancer or cluster ###
   

=================
#!/bin/bash

if ! pgrep -c nginx 1>/dev/null 2>/dev/null; then
    if ! pgrep -c rsync 1>/dev/null 2>/dev/null; then
        rsync  --delete --owner -group -lave  "ssh -i /root/sync_file" root@server_IP:/home/cloudpanel/htdocs/ /home/cloudpanel/htdocs
    systemctl start nginx
      touch /tmp/init
 fi
  else
 echo "nginx already running, do nothing";
 fi
=================
