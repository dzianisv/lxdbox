# Flags
|Name|Description|
|----|-----------|
|`ENABLE_X` | Enables Desktop Integration: X.org and Pulseaudio |
|`ENABLE_VIDEO` | Enables video devices integraiton: web cameras, video capture devices|

## Usage

```sh
bin/launch images:ubuntu/21.04 $CONTAINER_NAME
ENABLE_X=1 ENABLE_VIDEO=1 bin/open $CONTAINER_NAME
```

### Run command inside the container

```sh
lxc exec $CONTAINER_NAME -- bash
```

### Allow Docker and LXD inside container

```sh
lxc config set $CONTAINER_NAME security.netsing=true
```

### Show list of all available images

```sh 
lxc image list images:
```

### Delete container
```sh
lxc delete $CONTAINER_NAME
```
