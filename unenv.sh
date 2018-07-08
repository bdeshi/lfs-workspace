if [ -n "$LFS" ]; then
  # get sudo privileges
  sudo true
  echo "unmounting $LFS..."
  sync
  sudo umount -R $LFS
  sync
  sudo rm -r $LFS
  echo "unlinking toolkit..."
  sudo rm $TKIT
  echo -n "clearing variables... "
  echo "done. carry on."
else
  echo "environment was not active. exiting..."
fi
unset LFS LFS_DEV TKIT LFS_TKIT

