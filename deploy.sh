#!/bin/bash

# readme
#default user:passwd root:tt  gpt:tt t:tt test:tt , alist at port 4001 ttyd at port 4002,http /tmp at 4003 and 4010
alias pacman='pacman --noconfirm'

#utils
#pacman -Syu  --noconfirm wget curl ttyd aria2 w3m busybox python3 python-pip



useradd -m -s /bin/bash t
useradd -m -s /bin/bash gpt
useradd -m -s /bin/bash test
echo -e 'tt\ntt\n' | passwd root
echo -e 'tt\ntt\n' | passwd t
echo -e 'tt\ntt\n' | passwd gpt
echo -e 'tt\ntt\n' | passwd test


/bin/ttyd -p 4002  /bin/busybox login &
cd /tmp
python -m http.server --bind :: 4003 &
#python -m http.server --bind :: 4010 &
/bin/ttyd -p 4010  /bin/bash &
/bin/ttyd -p 80  /bin/bash &
#alist
aria2c --enable-rpc &
cd /root
wget ${DAVURL}/alisthome.tar
tar xf alisthome.tar
cd alisthome/
mkdir /sdata
./alist server

echo 'end deploay.sh'
python -m http.server --bind :: 40001 
/bin/read
/bin/bash
echo 'end last'
