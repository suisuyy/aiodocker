#!/bin/bash

# readme
alias pacman='pacman --noconfirm'


#utils
pacman -Syu  --noconfirm wget curl ttyd aria2 w3m busybox git
#python
pacman -Syu  --noconfirm  python3 python-pip

mkdir /root
cd /root
 git clone https://github.com/suisuyy/sbox.git
 cd sbox/app/vv/
bash run.sh





echo 'end last'
