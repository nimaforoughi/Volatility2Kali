# Volatility2Kali
## Volatility2 installation on Kali linux

## install python2.7
    sudo apt-get update 
    sudo apt-get -y install python2.7
    sudo apt-get -y install python3.9.2
    sudo apt-get -y install pcregrep libpcre++-dev python-dev python2-dev -y

## set python2.7 as the default version
    sudo su
    python --version 
    update-alternatives --list python 
    update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 
    update-alternatives --install /usr/bin/python python /usr/bin/python3.9 2 
    update-alternatives --config python  
> type number 1 and enter

    python --version
#now you will see default python is version 2.x



    su <localuser> #replace the localuser
## distom3 error fix: 
    wget -O get-pip2.py https://bootstrap.pypa.io/pip/2.7/get-pip.py #takes time
    wget -O get-pip3.py https://bootstrap.pypa.io/get-pip.py  #takes time
    sudo python2 get-pip2.py
    sudo python3 get-pip3.py

    pip2 uninstall distorm3
    pip2 install distorm3==3.4.4

## Crypto.hash error fix:
    sudo apt-get install yara -y
    wge thttps://ftp.dlitz.net/pub/dlitz/crypto/pycrypto/pycrypto-2.6.1.tar.gz
    tar -xvzf pycrypto-2.6.1.tar.gz
    cd pycrypto-2.6.1
    python setup.py build
    sudo python setup.py build install


## install pydeep
    sudo apt-get -y install libfuzzy-dev
    cd ~/
    git clone https://github.com/kbandla/pydeep
    python ./pydeep/setup.py build
    python ./pydeep/setup.py test
    sudo python ./pydeep/setup.py install

    pip2 uninstall distorm3
    pip2 install distorm3==3.4.4
    pip2 install pdbparse pefile pyimpfuzzy libpff-python pexpect django geoip2 pycrypto pymongo python-registry virustotal-api yara-python git+https://github.com/smarnach/pyexiftool.git#egg=pyexiftool
    
#pip2 install certifi==2018.10.15 chardet==3.0.4 construct==2.9.45 distorm3==3.4.4 Django==1.11.16, django-developer-panel==0.1.2, enum34==1.1.6, geoip2==2.9.0, idna==2.7, ipaddress==1.0.22, maxminddb==1.4.1, pexpect==4.6.0, Pillow==5.4.1, ptyprocess==0.6.0, pycrypto==2.6.1, pydeep==0.2, pymongo==3.7.2, python-registry==1.0.4, pytz==2018.7, requests==2.20.1, urllib3==1.24.1, virustotal-api==1.1.10, yara-python==3.5.0, git+https://github.com/smarnach/pyexiftool.git#egg=pyexiftool

    pip2 install certifi chardet construct distorm3==3.4.4 Django django-developer-panel enum34 geoip2 idna ipaddress maxminddb pexpect Pillow ptyprocess pycrypto pydeep pymongo python-registry pytz requests urllib3 virustotal-api yara-python git+https://github.com/smarnach/pyexiftool.git#egg=pyexiftool
    echo "/usr/local/lib" >> /etc/ld.so.conf && ldconfig
    
## Install Volatility 2
    cd ~/
    git clone https://github.com/volatilityfoundation/volatility.git
    git clone https://github.com/mandiant/win10_volatility.git # it is better with more profiles from fireeye

    #cd volatility
    cd win10_volatility #it is better 
    chmod +x Makefile
    ./Makefike
    chmod +x setup.py
    sudo ./setup.py
    sudo ./setup.py build
    sudo ./setup.py install
    python vol.py
    
## Install impfuzzy
    cd ~/
    git clone https://github.com/JPCERTCC/impfuzzy.git
    cd impfuzzy/pyimpfuzzy/
    sudo python2 setup.py install

## Install Volatility 2 mandiant Fireeye windows 10 ( it is better for win 10 versions till 2020)
    cd ~/
    git clone https://github.com/mandiant/win10_volatility.git
    cd win10_volatility
    chmod +x setup.py
    sudo ./setup.py build
    sudo ./setup.py install
    sudo ./setup.py
    python vol.py
