# Plex server in WSL

Plex Server on WSL with Windows drive mount using Docker

## Commands

* `mount.sh`: mounts Windows network drive to WSL. A Docker restart is required.
* `start.sh`: starts Plex server
* `stop.sh`: stops Plex server

In order to change the mount, edit `mount.sh` and validates that `start.sh` testing points to a valid folder.

## Some technical learnings
Mount Windows drive on WSL:
```
$ mkdir /mnt/mount
$ sudo mount -t drvfs M: /mnt/mount
```

Mount Windows Network drive on WSL:
```
$ mkdir /mnt/media
$ sudo mount -t drvfs '\\homedata.local\video' /mnt/media
```

Reference: https://www.public-health.uiowa.edu/it/support/kb48568/