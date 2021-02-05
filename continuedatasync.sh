Data sync when new data updated

=================
#!/bin/bash

if ! pgrep -c rsync 1>/dev/null 2>/dev/null; then
if [ -f /tmp/init ]; then
rsync  --delete --owner -group -lave  "ssh -i /root/sync_file" root@15.185.98.33:/home/cloudpanel/htdocs/ /home/cloudpanel/htdocs
else
echo "file does not exist"
fi
fi
=================
