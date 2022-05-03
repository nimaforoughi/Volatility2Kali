# Volatility2Kali
# Volatility2 installation on Kali linux


sudo su
python --version 
update-alternatives --list python 
update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 
update-alternatives --install /usr/bin/python python /usr/bin/python3.9 2 
update-alternatives --config python  
# type number 1 and enter
python --version
# now you will see default python is version 2.x



su <localuser>
# distom3 error:
wget -O get-pip2.py https://bootstrap.pypa.io/pip/2.7/get-pip.py #takes time
wget -O get-pip3.py https://bootstrap.pypa.io/get-pip.py  #takes time
sudo python2 get-pip2.py
sudo python3 get-pip3.py

pip2 uninstall distorm3
pip2 install distorm3==3.4.4

#Crypto.hash error:
sudo apt-get install yara -y
wge thttps://ftp.dlitz.net/pub/dlitz/crypto/pycrypto/pycrypto-2.6.1.tar.gz
tar -xvzf pycrypto-2.6.1.tar.gz
cd pycrypto-2.6.1
python setup.py build
sudo python setup.py build install

