set +h
umask 022
export LFS=/mnt/lfs
export TKIT=/tools
export PATH=$TKIT/bin:/bin:/usr/bin
export LC_ALL=POSIX
export LFS_TGT=$(uname -m)-lfs-linux-gnu

function mkcd() { mkdir -p $1; cd $1; }

source ~/lfs_struct.sh
