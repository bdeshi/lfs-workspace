if [ -n "$LFS" ]; then
  if [ -z "$LFS_FS" ]; then
    sudo mkdir -p $LFS/{dev,proc,sys,run}
    sudo mknod -m 600 $LFS/dev/console c 5 1
    sudo mknod -m 660 $LFS/dev/null c 1 3
    sudo mount -v --bind /dev $LFS/dev
    sudo mount -vt devpts devpts $LFS/dev/pts -o gid=5,mode=620
    sudo mount -vt proc proc $LFS/proc
    sudo mount -vt sysfs sysfs $LFS/sys
    sudo mount -vt tmpfs tmpfs $LFS/run
    if [ -h $LFS/dev/shm ]; then
      sudo mkdir -pv $LFS/$(readlink $LFS/dev/shm);
    fi
    export LFS_FS=1
  fi

  sudo chroot "$LFS"                                    \
    /tools/bin/env -i                                   \
    HOME=/root TERM="$TERM" PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin:                 \
    /tools/bin/bash --login +h
fi
