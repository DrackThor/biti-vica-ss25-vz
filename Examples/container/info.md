# Container Info Commands

```shell
# get all attached block devices
lsblk

# get all filesystems
df-h

# list all network interfaces
ip a

# are we a VM?
systemd-detect-virt
dmesg | grep -i kvm
lscpu
#Virtualization features:
# Virtualization: VT-X
# Hypervisor vendor: KVM
# Virtualization type: full

# list all mounted volumes
mount

# list all linux namespaces
lsns --output-all -T

# checkout namespaces of a process
ls -l /proc/<pid>/ns

# see network namespaces
ls -li /var/run/netns
ip netns
# .. for docker
ls -li /var/run/docker/netns

# see enabled cgroup controllers
cat /sys/fs/cgroup/cgroup.controllers
cat /sys/fs/cgroup/cgroup.subtree_control

# get cgroups for process/container
cat /proc/<pid>/cgroup
ls -l /sys/fs/cgroup/.../<container-id>/
```