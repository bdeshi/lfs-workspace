./configure --prefix=$TKIT && make && make install
popd
tar -xf gawk-4.2.1.tar.xz 
pushd gawk-4.2.1/
./configure --prefix=$TKIT && make && make install
popd
tar -xf gettext-0.19.8.1.tar.xz gettext-0.19.8.1/
tar -xf gettext-0.19.8.1.tar.xz
pushd gettext-0.19.8.1/
cd gettext-tools/
EMACS="no" ./configure --prefix=$TKIT --disable-shared
make -C gnulib-lib && make -C intl pluralx.c && make -C src msgfmt && make -C src msgmerge && make -C src xgettext && cp -v src/{msgfmt,msgmerge,xgettext} /tools/bin && popd
popd
tar -xf grep-3.1.tar.xz && pushd grep-3.1
ww
rm -vr $(ls -F | grep -e '\/$')
rm -r $(ls -F | grep -e '\/$')
rm -rf $(ls -F | grep -e '\/$')
tar -xf gzip-1.9.tar.xz && pushd gzip-1.9
./configure --prefix=$TKIT && make && make install && popd
tar -xf make-4.2.1.tar.bz2 && pushd make-4.2.1
sed -i '211,217 d; 219,229 d; 232 d' glob/glob.c
./configure --prefix=$TKIT --without-guile && make && make install && popd
tar -xf patch-2.7.6.tar.xz && pushd patch-2.7.6
./configure --prefix=$TKIT && make && make install && popd
rm -r patch-2.7.6 make-4.2.1 gzip-1.9
tar -xf perl-5.26.1.tar.xz && pushd perl-5.26.1
ls
sh Configure -des -Dprefix=$TKIT -Dlibs=-lm && make
cp -v perl cpan/podlators/scripts/pod2man $TKIT/bin
mkdir -pv $TKIT/lib/perl5/5.26.1
cp -Rv lib/* $TKIT/lib/perl5/5.26.1
popd
rm -r perl-5.26.1
rm -rf perl-5.26.1
tar -xf sed-4.4.tar.xz 
pushd sed-4.4/
./configure --prefix=$TKIT && make && make install && popd
tar -xf tar-1.30.tar.xz && pushd tar-1.30
./configure --prefix=$TKIT && make && make install && popd
tar -xf texinfo-6.5.tar.xz && pushd texinfo-6.5
./configure --prefix=$TKIT && make && make install && popd
rm -rf tar-1.30 texinfo-6.5 sed-4.4
tar -xf util-linux-2.32.tar.xz && pushd util-linux-2.32
./configure --prefix=$TKIT --without-python --disable-makeinstall-chown --without-systemdsystemunitdir --without-ncurses PKG_CONFIG="" && make && make install && popd
tar -xf xz-5.2.3.tar.xz && pushd xz-5.2.3
./configure --prefix=$TKIT && make && make install && popd
strip --strip-debug $TKIT/lib/* && /usr/bin/strip --strip-unneeded $TKIT/{,s}bin/*
rm -rf $TKIT/{,share}/{info,man,doc}
find $TKIT/{lib,libexec} -name \*.la -delete
rm -rf util-linux-2.32 xz-5.2.3
chown -R foot:root $LFS/tools
chown -R root:root $LFS/tools
sudo chown -R root:root $LFS/tools
ls -lA $LFS
exit
cd $LFS/sources
ls -alF
ls -lAF
ls --help
ls -lF
ls -F
ls --help
ls -F
ls --help
ls -F
ls -lF
ls -l -F
ls -la --classify
tar -xf tar-1.30.tar.xz 
pushd tar-1.30/
./configure --prefix=$TKIT
reset
./configure --prefix=$TKIT | less
popd
rm -rf tar-1.30
exit
exit
vim .bash_login
ls
ls -la
vim .bash_profile 
vim .bashrc
vim .bash_profile 
vim .bashrc
exit
export
exit
vim .bash_profile 
exit
vim .bash_profile 
vim .bashrc
su --help
echo $TKIT
exit
exit
exit
exit
export
mkdir -pv $LFS/{dev,proc,sys,run}
sudo mkdir -pv $LFS/{dev,proc,sys,run}
mknod -m 600 $LFS/dev/console c 5 1
sudo mknod -m 600 $LFS/dev/console c 5 1
sudo mknod -m 666 $LFS/dev/null c 1 3
mount -v --bind /dev $LFS/dev
sudo mount -v --bind /dev $LFS/dev
sudo mount -vt devpts devpts $LFS/dev/pts -o gid=5,mode=620
sudo mount -vt proc proc $LFS/proc
sudo mount -vt sysfs proc $LFS/proc
sudo mount -vt proc proc $LFS/proc

sudo mount -vt proc proc $LFS/proc
mount
sudo umount $LFS/proc
mount
sudo umount $LFS/proc
sudo umount $LFS/proc
sudo umount $LFS/proc
sudo umount $LFS/proc
sudo umount $LFS/proc
sudo umount $LFS/proc
sudo mount -vt proc proc $LFS/proc
sudo mount -vt sysfs sysfs $LFS/sysfs
sudo mount -vt sysfs sysfs $LFS/sys
sudo mount -vt tmpfs tmpfs $LFS/run
if [ -h $LFS/dev/shm ]; then mkdir -pv $LFS/$(readlink $LFS/dev/shm); fi
chroot $LFS /tools/bin/env -i HOME=/root TERM=$TERM PS1='lfs chroot|\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin $TKIT/bin/bash --login +h
sudo chroot $LFS /tools/bin/env -i HOME=/root TERM=$TERM PS1='lfs chroot|\u:\w\$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin $TKIT/bin/bash --login +h
ls /tools
exit
ls /tools
ls $LFS/tools
exit
vim .bash_profile 
vim .bashrc
exit
exit
ls /tools
echo testfile | sudo tee /tools/testfile
exit
ls -la $LFS
exit
ls \$LFS/tools/
ls $LFS/tools/
ls $LFS/tools
mount
echo testfile | sudo tee /tools/testfile
echo testfile | sudo tee $LFS/tools/testfile
sudo mount --bind $LFS/tools /tools
sudo mkdir -p /tools
sudo mount --bind $LFS/tools /tools
exit
sudo mount --bind $LFS/tools /tools
sudo mkdir -p /tools
sudo mount --bind $LFS/tools /tools
ls /tools
exit
ls $LFS/tools
/tools
ls /tools
clear
cd $LFS/sources
tar -xf binutils-2.30.tar.xz 
pushd binutils-2.30/
mkcd _build
../configure --prefix=/tools                         --with-sysroot=$LFS                     --with-lib-path=/tools/lib              --target=$LFS_TGT                       --disable-nls              \
../configure --prefix=$TKIT --with-sysroot=$LFS --with-lib-path=$TKIT/lib --target=$LFS_TGT --disable-nls --disable-werror
sudo mkdir -p $TKIT/lib
sudo ln -sf lib $TKIT/lib64
make && make install
echo $USER
export
export --help
export -p
chown lfs $TKIT
sudo chown lfs $TKIT
echo t > $TKIT/test
ls $LFS/tools
ls -la $LFS/tools
rm -rf $LFS/tools
rm -rf $TKIT
rm -rf $TKIT/*
make install
ls $LFS/tools
mkdir -p $TKIT/lib
ln -s lib $TKIT/lib64
vim
tar -xf ../mpfr-4.0.1.tar.xz
mv -v mpfr-4.0.1 mpfr
tar -xf ../gmp-6.1.2.tar.xz
mv -v gmp-6.1.2 gmp
tar -xf ../mpc-1.1.0.tar.gz
fg
tar -xf ../mpfr-4.0.1.tar.xz
mv -v mpfr-4.0.1 mpfr
tar -xf ../gmp-6.1.2.tar.xz
mv -v gmp-6.1.2 gmp
tar -xf ../mpc-1.1.0.tar.gz
fg
popd
tar -xf gcc-7.3.0.tar.xz && pushd gcc-7.3.0 && mkcd _build
tar -xf ../mpfr-4.0.1.tar.xz && tar -xf ../gmp-6.1.2.tar.xz && tar -xf ../mpc-1.1.0.tar.gz
cd ..
tar -xf ../mpfr-4.0.1.tar.xz && tar -xf ../gmp-6.1.2.tar.xz && tar -xf ../mpc-1.1.0.tar.gz
mv -v mpfr-4.0.1 mpfr && mv -v gmp-6.1.2 gmp &&mv -v mpc-1.1.0 mpc
popd
pushd gcc-7.3.0/_build/
cd ..
for file in gcc/config/{linux,i386/linux{,64}}.h; do   cp -uv $file{,.orig};   sed -e 's@/lib\(64\)\?\(32\)\?/ld@/tools&@g'       -e 's@/usr@/tools@g' $file.orig > $file;   echo '
#undef STANDARD_STARTFILE_PREFIX_1
#undef STANDARD_STARTFILE_PREFIX_2
#define STANDARD_STARTFILE_PREFIX_1 "/tools/lib/"
#define STANDARD_STARTFILE_PREFIX_2 ""' >> $file;   touch $file.orig; done
case $(uname -m) in   x86_64)     sed -e '/m64=/s/lib64/lib/'         -i.orig gcc/config/i386/t-linux64;  ;; esac
cd _build/
../configure                                           --target=$LFS_TGT                                  --prefix=/tools                                    --with-glibc-version=2.11                          --with-sysroot=$LFS                                --with-newlib                                      --without-headers                                  --with-local-prefix=/tools                         --with-native-system-header-dir=/tools/include     --disable-nls                                      --disable-shared                                   --disable-multilib                                 --disable-decimal-float                            --disable-threads                                  --disable-libatomic                                --disable-libgomp                                  --disable-libmpx                                   --disable-libquadmath                              --disable-libssp                                   --disable-libvtv                                   --disable-libstdcxx                                --enable-languages=c,c++ \
../configure                                           --target=$LFS_TGT                                  --prefix=$TKIT                                    --with-glibc-version=2.11                          --with-sysroot=$LFS                                --with-newlib                                      --without-headers                                  --with-local-prefix=$TKIT                         --with-native-system-header-dir=$TKIT/include     --disable-nls                                      --disable-shared                                   --disable-multilib                                 --disable-decimal-float                            --disable-threads                                  --disable-libatomic                                --disable-libgomp                                  --disable-libmpx                                   --disable-libquadmath                              --disable-libssp                                   --disable-libvtv                                   --disable-libstdcxx                                --enable-languages=c,c++
make && make install
exit
exit
cat .bash_profile
cat .bashrc
exit
cd $LFS/sources
ls -la
ls -l
ls --help
ls -a 
ls --help
ls --format=C
ls -C
ls -x
ls --format=C
ls --help
ls  -1
ls  -1 | xarg _ tar -xf _
ls  -1 | xargs _ tar -xf $_
tldr xargs
find . -name '*.tar'
ls -1 | less
ranger
ls -1 | xargs tar -xf
ls -1 | xargs -I _ tar -xf _
sudo rm -rf XML-Parser-2.44
pushd linux-4.15.14/
make mrproper
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* $TKIT/include
popd
pushd glibc-2.27/
mkcd _build
../configure                                   --prefix=/tools                          --host=$LFS_TGT                          --build=$(../scripts/config.guess)       --enable-kernel=3.2                   --with-headers=/tools/include            libc_cv_forced_unwind=yes          \
../configure                                   --prefix=$TKIT                          --host=$LFS_TGT                          --build=$(../scripts/config.guess)       --enable-kernel=3.2                   --with-headers=$TKIT/include            libc_cv_forced_unwind=yes         libc_cv_c_cleanup=yes
make && make install
echo 'int main(){}' > dummy.c
$LFS_TGT-gcc  dummy.c
readelf -l a.out
readelf -l a.out | grep ': /tools'
rm dummy.c a.out
cd ..
rm -rf _build
mkcd _build
../libstdc++-v3/configure               --host=$LFS_TGT                     --prefix=/tools                     --disable-multilib                  --disable-nls                       --disable-libstdcxx-threads         --disable-libstdcxx-pch             --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/7.3.0 && make && make install
../libstdc++-v3/configure               --host=$LFS_TGT                     --prefix=/tools                     --disable-multilib                  --disable-nls                       --disable-libstdcxx-threads         --disable-libstdcxx-pch             --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/7.3.0 && make && make install
popd
pushd gcc-7.3.0/
mkcd _build
ls
../libstdc++-v3/configure               --host=$LFS_TGT                     --prefix=/tools                     --disable-multilib                  --disable-nls                       --disable-libstdcxx-threads         --disable-libstdcxx-pch             --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/7.3.0 && make && make install
popd
pushd binutils-2.30/
mkcd _build
CC=$LFS_TGT-gcc                AR=$LFS_TGT-ar                 RANLIB=$LFS_TGT-ranlib         ../configure                       --prefix=/tools                --disable-nls                  --disable-werror               --with-lib-path=/tools/lib     --with-sysroot && make && make install && make -C ld clean && make -C ld LIB_PATH=/usr/lib:/lib && cp ld/ld-new /tools/bin
popd
cd gcc-7.3.0/
cat gcc/limitx.h gcc/glimits.h gcc/limity.h >   `dirname $($LFS_TGT-gcc -print-libgcc-file-name)`/include-fixed/limits.h
for file in gcc/config/{linux,i386/linux{,64}}.h; do   cp -uv $file{,.orig};   sed -e 's@/lib\(64\)\?\(32\)\?/ld@/tools&@g'       -e 's@/usr@/tools@g' $file.orig > $file;   echo '
#undef STANDARD_STARTFILE_PREFIX_1
#undef STANDARD_STARTFILE_PREFIX_2
#define STANDARD_STARTFILE_PREFIX_1 "/tools/lib/"
#define STANDARD_STARTFILE_PREFIX_2 ""' >> $file;   touch $file.orig; done

tar -xf ../mpfr-4.0.1.tar.xz && tar -xf ../gmp-6.1.2.tar.xz &&  tar -xf ../mpc-1.1.0.tar.gz
mv -v mpfr-4.0.1 mpfr && mv -v gmp-6.1.2 gmp && mv -v mpc-1.1.0 mpc
rm -rf _build/
mkcd _build/
CC=$LFS_TGT-gcc                                    CXX=$LFS_TGT-g++                                   AR=$LFS_TGT-ar                                     RANLIB=$LFS_TGT-ranlib                             ../configure                                           --prefix=/tools                                    --with-local-prefix=/tools                         --with-native-system-header-dir=/tools/include     --enable-languages=c,c++                           --disable-libstdcxx-pch                            --disable-multilib                                 --disable-bootstrap                                --disable-libgomp && make && make install && ln -s gcc $TKIT/bin/cc
mkdir _test
ls -la _test
ls -la
chmod 777 _test
ls -la
exit
ls /tools
exit
echo 'int main(){}' > dummy.c
cc dummy.c
readelf -l a.out | grep ': /tools'
cd $LFS/sources
pushd tcl8.6.8
cd unix
./configure --prefix=$TKIT
make && make install && chmod -v u+w /tools/lib/libtcl8.6.so && make install-private-headers && ln -sv tclsh8.6 /tools/bin/tclsh
popd
pushd expect5.45.4/
cp -v configure{,.orig}
sed 's:/usr/local/bin:/bin:' configure.orig > configure
./configure --prefix=/tools                   --with-tcl=/tools/lib             --with-tclinclude=/tools/include
make && make SCRIPTS="" install
popd
pushd dejagnu-1.6.1/ && ./configure --prefix=/tools && make install && popd pushd m4-1.4.18 && ./configure --prefix=/tools && make && make install && popd && pushd ncurses-6.1/ && sed -i s/mawk// configure && ./configure --prefix=/tools             --with-shared               --without-debug             --without-ada               --enable-widec              --enable-overwrite && make && make install && popd && pushd bash-4.4.18 && ./configure --prefix=/tools --without-bash-malloc && make && make install && ln -sv bash /tools/bin/sh && popd && pushd bison-3.0.4 && ./configure --prefix=/tools && make && make install && popd && pushd bzip2-1.0.6 && make && make PREFIX=/tools install && popd && pushd coreutils-8.29 && ./configure --prefix=/tools --enable-install-program=hostname && make && make install && popd && pushd diffutils-3.6 && ./configure --prefix=/tools && make && make install && popd && pushd file-5.32 && ./configure --prefix=/tools && make && make install && popd && pushd findutils-4.6.0 && ./configure --prefix=/tools && make && make install && popd && pushd gawk-4.2.1 && ./configure --prefix=/tools && make && make install && popd && pushd gettext-0.19.8.1 && cd gettext-tools && EMACS="no" ./configure --prefix=/tools --disable-shared && make -C gnulib-lib && make -C intl pluralx.c && make -C src msgfmt && make -C src msgmerge && make -C src xgettext && cp -v src/{msgfmt,msgmerge,xgettext} /tools/bin && popd && pushd grep-3.1 && ./configure --prefix=/tools && make && make install && popd && pushd gzip-1.9 && ./configure --prefix=/tools && make && make install && popd && pushd make-4.2.1 && sed -i '211,217 d; 219,229 d; 232 d' glob/glob.c && ./configure --prefix=/tools --without-guile && make && make install && popd && pushd patch-2.7.6 && ./configure --prefix=/tools && make && make install && popd && pushd perl-5.26.1 && sh Configure -des -Dprefix=/tools -Dlibs=-lm && make && cp -v perl cpan/podlators/scripts/pod2man /tools/bin && mkdir -pv /tools/lib/perl5/5.26.1 && cp -Rv lib/* /tools/lib/perl5/5.26.1 && popd && pushd sed-4.4 && ./configure --prefix=/tools && make && make install && popd && pushd tar-1.30  && ./configure --prefix=/tools && make && make install && popd && pushd texinfo-6.5 && ./configure --prefix=/tools && make && make install && popd && pushd util-linux-2.32 && ./configure --prefix=/tools                            --without-python                           --disable-makeinstall-chown                --without-systemdsystemunitdir             --without-ncurses              \
pushd dejagnu-1.6.1/ && ./configure --prefix=/tools && make install && popd && pushd m4-1.4.18 && ./configure --prefix=/tools && make && make install && popd && pushd ncurses-6.1/ && sed -i s/mawk// configure && ./configure --prefix=/tools --with-shared --without-debug --without-ada --enable-widec --enable-overwrite && make && make install && popd && pushd bash-4.4.18 && ./configure --prefix=/tools --without-bash-malloc && make && make install && ln -sv bash /tools/bin/sh && popd && pushd bison-3.0.4 && ./configure --prefix=/tools && make && make install && popd && pushd bzip2-1.0.6 && make && make PREFIX=/tools install && popd && pushd coreutils-8.29 && ./configure --prefix=/tools --enable-install-program=hostname && make && make install && popd && pushd diffutils-3.6 && ./configure --prefix=/tools && make && make install && popd && pushd file-5.32 && ./configure --prefix=/tools && make && make install && popd && pushd findutils-4.6.0 && ./configure --prefix=/tools && make && make install && popd && pushd gawk-4.2.1 && ./configure --prefix=/tools && make && make install && popd && pushd gettext-0.19.8.1 && cd gettext-tools && EMACS="no" ./configure --prefix=/tools --disable-shared && make -C gnulib-lib && make -C intl pluralx.c && make -C src msgfmt && make -C src msgmerge && make -C src xgettext && cp -v src/{msgfmt,msgmerge,xgettext} /tools/bin && popd && pushd grep-3.1 && ./configure --prefix=/tools && make && make install && popd && pushd gzip-1.9 && ./configure --prefix=/tools && make && make install && popd && pushd make-4.2.1 && sed -i '211,217 d; 219,229 d; 232 d' glob/glob.c && ./configure --prefix=/tools --without-guile && make && make install && popd && pushd patch-2.7.6 && ./configure --prefix=/tools && make && make install && popd && pushd perl-5.26.1 && sh Configure -des -Dprefix=/tools -Dlibs=-lm && make && cp -v perl cpan/podlators/scripts/pod2man /tools/bin && mkdir -pv /tools/lib/perl5/5.26.1 && cp -Rv lib/* /tools/lib/perl5/5.26.1 && popd && pushd sed-4.4 && ./configure --prefix=/tools && make && make install && popd && pushd tar-1.30  && ./configure --prefix=/tools && make && make install && popd && pushd texinfo-6.5 && ./configure --prefix=/tools && make && make install && popd && pushd util-linux-2.32 && ./configure --prefix=/tools --without-python --disable-makeinstall-chown --without-systemdsystemunitdir --without-ncurses PKG_CONFIG="" && make && make install && pushd xz-5.2.3/ && ./configure --prefix=/tools && make && make install && popd
./configure --prefix=/tools --without-python --disable-makeinstall-chown --without-systemdsystemunitdir --without-ncurses PKG_CONFIG="" && make && make install && popd && pushd xz-5.2.3/ && ./configure --prefix=/tools && make && make install && popd
strip --strip-debug /tools/lib/* && /usr/bin/strip --strip-unneeded /tools/{,s}bin/*
rm -rf /tools/{,share}/{info,man,doc}
find /tools/{lib,libexec} -name \*.la -delete
df $LFS_DEV
df -h
rm -r .
cd ..
rm -r ./sources/
rm -rf ./sources/
df -h
sudo rm -rf $LFS/{dev,proc,sys,run}
sudo chown -R root:root $LFS/tools
echo test >> /tools/testfile
sudo tar -cPJ $LFS/tools
sudo tar -cPJ lfs_tools.tar.xz $LFS/tools
sudo tar -cPJ lfs_tools.tar.xz $LFS/tools/
sudo tar -cPJf lfs_tools.tar.xz $LFS/tools/
sudo tar -cPJf --checkpoint lfs_tools.tar.xz $LFS/tools/
sudo tar --checkpoint -cPJf lfs_tools.tar.xz $LFS/tools/
sudo pacman -S --asdeps lrzip
exit
sudo rm -r $LFS/lfs_tools.tar.xz
sudo rm -r $LFS/--checkpoint
exit
ls -l $LFS
sudo mkdir -p $LFS/{dev,proc,sys,run}
sudo mknod -m 600 $LFS/dev/console c 5 1
sudo mknod -m 660 $LFS/dev/null c 1 3
sudo mount -v --bind /dev $LFS/dev
sudo mount -v --bind /devpts $LFS/dev/pts -o gid=5,mode=620
sudo mount -v --bind devpts $LFS/dev/pts -o gid=5,mode=620
sudo mount -vt devpts devpts $LFS/dev/pts -o gid=5,mode=620
sudo mount -vt proc proc $LFS/proc
sudo mount -vt sysfs sysfs $LFS/sys
sudo mount -vt tmpfs tmpfs $LFS/run
if [ -h $LFS/dev/shm ]; then   mkdir -pv $LFS/$(readlink $LFS/dev/shm); fi
if [ -h $LFS/dev/shm ]; then   mkdir -pv $LFS/$(readlink $LFS/dev/shm); fi
fc -l 
fc -l 499 509 > lfs_struct.sh
cat lfs_struct.sh
fc -l -n 499 509 > lfs_struct.sh
cat lfs_struct.sh
clear
sudo
sudo ls
rm a.out dummy.c 
chroot "$LS $TKIT/bin/env -i \
HOME=/root \
TERm="$TERM" \
chroot "$LS $TKIT/bin/env -i HOME=/root TERm="$TERM" \
chroot "$LS $TKIT/bin/env -i \
HOME=/root \
TERM="$TERM" \
PS1='(lfs chroot) \u:\w$ ' \
PATH=/bin:/usr/bin:/sbin:/usr/sbin:$TKIT/bin \
$TKIT/bash --login +h

chroot "$LFS" $TKIT/bin/env -i HOME=/root TERM="$TERM" PS1='(lfs chroot) \u:\w$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin:$TKIT/bin $TKIT/bash --login +h
sudo chroot "$LFS" $TKIT/bin/env -i HOME=/root TERM="$TERM" PS1='(lfs chroot) \u:\w$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin:$TKIT/bin $TKIT/bash --login +h
sudo chroot "$LFS" $TKIT/bin/env -i HOME=/root TERM="$TERM" PS1='(lfs chroot) \u:\w$ ' PATH=/bin:/usr/bin:/sbin:/usr/sbin:$TKIT/bin $TKIT/bin/bash --login +h
mount
umount devpts
sudo umount /dev/pts
sudo umount /$LFS/dev/pts
sudo umount /$LFS/dev
sudo umount /$LFS/sys
sudo umount /$LFS/proc
sudo umount /$LFS/run
mount
exit
groups
exit
ls
ls -la
vim lfs_struct.sh 
vim .bash_profile 
exit
. ./lfs_struct.sh 
vim lfs_struct.sh 
cat /dev/null 
cat /dev/console
sudo cat /dev/console
vim lfs_struct.sh 

sudo chroot "$LFS" /tools/bin/env -i     HOME=/root                      TERM="$TERM"                    PS1='(lfs chroot) \u:\w\$ '     PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin     /tools/bin/bash --login +h
mount

mount
sudo umount /mnt/lfs/tmp
sudo umount /mnt/lfs/run
exit
. ./lfs_struct.sh 
ls /mnt/lfs/
vim ./lfs_struct.sh 
. ./lfs_struct.sh 
exit
. ./lfs_struct.sh 
exit
ls $LFS
ls $LFS/tools
exit
. ./lfs_struct.sh 
mount
:q
exir
exit
cat ./lfs_struct.sh 
exit
. ./lfs_struct.sh 
exit
. ./lfs_struct.sh 
exit
ls $TKIT 
rm -rf $TKIT
sudo rm -rf $TKIT
ls $TKIT 
ls $TKIT 
ls $TKIT 
ls $LFS
ls $LFS_TKIT 
export
ls /tools
exit
ls /tools
clear
sudo chown -R root:root /tools
reset
. ./lfs_struct.sh 
logout
exit
ls $LFS
exit
. ./lfs_struct.sh 
exit
echo 6.16 > progress
exit
echo progress
exit
cat progress
alias rx='rm -rf' && alias tx='tar -xf' && alias p='pushd' && alias pp='popd'
alias m='make' && alias mi='make install'
_p='--prefix=/usr';_c='./configure';
exit
vim .bashrc
vim lfs_struct.sh 
exit
exit
exit
exit
vim /mnt/lfs/helper.sh 
sudo vim /mnt/lfs/helper.sh 
exit
exit
exit
vim $LFS/lfs-builder.sh
sudo chown $LFS/lfs-builder.sh
sudo chown lfs:lfs $LFS/lfs-builder.sh
wfg
fg
mv ~/lfs-build.sh $LFS/lfs-builder.sh
sudo mv ~/lfs-build.sh $LFS/lfs-builder.sh
exit
ls
. ./lfs_struct.sh 
exit
chroot $LFS /tools/bin/env -i              HOME=/root TERM=$TERM                  PS1='(lfs chroot) \u:\w\$ '            PATH=/bin:/usr/bin:/sbin:/usr/sbin     /tools/bin/bash --login
sudo chroot $LFS /tools/bin/env -i              HOME=/root TERM=$TERM                  PS1='(lfs chroot) \u:\w\$ '            PATH=/bin:/usr/bin:/sbin:/usr/sbin     /tools/bin/bash --login
sudo chroot $LFS /tools/bin/env -i              HOME=/root TERM=$TERM                  PS1='(lfs chroot) \u:\w\$ '            PATH=/bin:/usr/bin:/sbin:/usr/sbin     /tools/bin/bash --login
ls /mnt
ls /mnt/lfs
ls /mnt/lfs/bin
exit
vim lfs_struct.sh 
export LFS_FS=1
. ./lfs_struct.sh 
logout
mount
vim lfs_struct.sh 
man bash
logout
exit
exit
exit
exit
exit
exit
exit
