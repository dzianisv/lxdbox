This tool helps you to isolate your workspaces inside LXD containers (Guest OS), share X.org, Pulseaudio, and Web Cameras from the host OS to your Guest OS. It is mainly tested on Ubuntu with Ubuntu-based containers, but also partly worked with ArchLinux containers as well.

## Flags
|Name|Description|
|----|-----------|
|`ENABLE_DESKTOP` | Enables Desktop Integration: X.org and Pulseaudio |
|`ENABLE_VIDEO` | Enables video devices integraiton: web cameras, video capture devices|

## Usage

```sh
bin/create images:ubuntu/21.04 $CONTAINER_NAME
ENABLE_DESKTOP=1 ENABLE_VIDEO=1 bin/open $CONTAINER_NAME
```

### LXD configs

- Docker, `ip netns`, ecryptfs
```
raw.lxc: |-
    lxc.cgroup.devices.allow = a
    lxc.cap.drop =
  security.nesting: "true"
  security.privileged: "true"
```

### LXD integration with host desktop
Start LXD container with `ENABLE_DESKTOP=1`
Add a shortcut on the host Desktop Environment
```
lxc exec "$CONTAINER_NAME" -- bash -lc "sudo -u user gmrun"
```

### Run command inside the container

```sh
lxc exec $CONTAINER_NAME -- bash
```

### Show list of all available images

```sh 
lxc image list images:
```

### Delete container
```sh
lxc delete $CONTAINER_NAME
```
