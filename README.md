# Volatility2Kali
# Volatility2 installation on Kali linux

# install python2.7
sudo apt-get update 
sudo apt-get -y install python2.7
sudo apt-get -y install python3.9.2
sudo apt-get -y install pcregrep libpcre++-dev python-dev python2-dev -y

# set python2.7 as the default version
sudo su
python --version 
update-alternatives --list python 
update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 
update-alternatives --install /usr/bin/python python /usr/bin/python3.9 2 
update-alternatives --config python  
#type number 1 and enter
python --version
#now you will see default python is version 2.x



su <localuser>
# distom3 error fix: 
wget -O get-pip2.py https://bootstrap.pypa.io/pip/2.7/get-pip.py #takes time
wget -O get-pip3.py https://bootstrap.pypa.io/get-pip.py  #takes time
sudo python2 get-pip2.py
sudo python3 get-pip3.py

pip2 uninstall distorm3
pip2 install distorm3==3.4.4

# Crypto.hash error fix:
sudo apt-get install yara -y
wge thttps://ftp.dlitz.net/pub/dlitz/crypto/pycrypto/pycrypto-2.6.1.tar.gz
tar -xvzf pycrypto-2.6.1.tar.gz
cd pycrypto-2.6.1
python setup.py build
sudo python setup.py build install

# Install the volatility
cd /~
git clone https://github.com/volatilityfoundation/volatility.git
sudo echo "/usr/local/lib" >> /etc/ld.so.conf && ldconfig
cd volatility
#sudo rm -rf /usr/local/lib/python2.6/dist-packages/volatility
#sudo rm `which vol.py`
#sudo rm -rf /usr/local/contrib/plugins
  
sudo python setup.py install
pip2 uninstall distorm3
pip2 install distorm3==3.4.4

python vol.py

