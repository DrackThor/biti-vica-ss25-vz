#cloud-config
users:
  - name: dummy
    groups: sudo
    shell: /bin/bash
    sudo: ['ALL=(ALL) NOPASSWD:ALL']

write_files:
  - path: /home/dummy/hello.txt
    content: |
      Hello, newuser!
      This file was created by cloud-init.
    owner: dummy:dummy
    permissions: '0644'

runcmd:
  - chown dummy:dummy /home/dummy/hello.txt
