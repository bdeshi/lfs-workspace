echo "applying variables..."
export LFS_DEV=/dev/sdb3
export LFS=/mnt/lfs
export LFS_TKIT=$LFS/tools
export TKIT=/tools

# get sudo privileges
sudo true
echo "mounting $LFS_DEV to $LFS..."
sudo mkdir -p $LFS
sudo mount $LFS_DEV $LFS
echo "mounting $LFS_TKIT to $TKIT..."
sudo mkdir -p $LFS_TKIT
sudo ln -sfT $LFS_TKIT $TKIT
echo "log in as lfs user... OK, go."
su - lfs
# cleanup
echo -n 'LFS session: clean up? (y/n) ' && read prompt_answer
if [ "$prompt_answer" = "y" ]; then
  source ./unenv.sh
fi

