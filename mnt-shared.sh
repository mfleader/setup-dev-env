#!/bin/bash
# vmware mounts shared directories to /mnt/hgfs

# doesn't work, b/c they switched to fuse
# mount -t vmhgfs .host:/ /home/mfleader/shares

# check if /mnt/hgfs does not exist
if [ ! -d mnt/hgfs/ ]; then
	sudo mkdir /mnt/hgfs
fi

# mount shared directories to /mnt/hgfs
/usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other
