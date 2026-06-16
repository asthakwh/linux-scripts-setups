Physical Volume

    pvcreate /dev/sdb1
    pvs #lists available physical volumes
    pvdisplay /dev/sdb1 #shows info of a physical volume

Volume Group

    vgcreate vgname /dev/sdb1
    vgs #lists available volume groups
    vgdisplay vgname #shows info of a volume group
    vgextend vgname /dev/sdc3 #extends a volume group adding a new physical volume /dev/sdc3

Logical volume

    lvcreate -n volumename -L 10G vgname
    lvcreate -n volumename -l 100%FREE vgname
    lvs #list available logical volumes
    lvdisplay #shows info of all logical volumes

    lvdisplay vgname/volumename #shows info of a logical volume volumenam contained in vgname volume group

Before use a lv, a file system must be created on it

    blkid /dev/vgname/volumename #shows the UUID of a formatted volume group

    lvextend -L +1G -r vgname/volumename #extends the logical volume volumename of one giga
    
`-r` is used to resize file system

    lvreduce -L -1G -r vgname/volumename 

```text
pvcreate /dev/sdb1
pvs # lists available physical volumes
pvdisplay /dev/sdb1 # shows info of a physical volume
```