#!/bin/bash

# readme
#default user:passwd root:tt  gpt:tt t:tt test:tt , alist at port 4001 ttyd at port 4002,http /tmp at 4003 and 4010
alias pacman='pacman --noconfirm'

#utils
pacman -Syu  --noconfirm wget curl ttyd aria2 w3m busybox
#python
pacman -Syu  --noconfirm  python3 python-pip
#node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install 18
nvm use 18


useradd -m -s /bin/bash t
useradd -m -s /bin/bash gpt
useradd -m -s /bin/bash test
echo -e 'tt\ntt\n' | passwd root
echo -e 'tt\ntt\n' | passwd t
echo -e 'tt\ntt\n' | passwd gpt
echo -e 'tt\ntt\n' | passwd test


/bin/ttyd -P 4002 -i lo busybox login &
cd /tmp
python -m http.server --bind :: 4003 &
python -m http.server --bind :: 4010 &

#alist
cd /root
wget ${DAVURL}/alisthome.tar
tar xf alisthome.tar
cd alisthome/
mkdir /sdata
./alist server 
/bin/bash
