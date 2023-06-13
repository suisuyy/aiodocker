# aiodocker
all function in one docker,alist ,ttyd ,http and more

#usage
set DAVURL first for download alisthome.tar
```
cd /root
git clone https://github.com/suisuyy/aiodocker.git
cd aiodocker
docker build -t aiodocker ./ && docker run -it --rm -e DAVURL=$DAVURL --net host aiodocker


```
open 4001 4002 4003 4010 port then
