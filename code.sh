sudo apt-get update 
sudo apt-get -y install python2.7
#sudo apt-get -y install python3.9.2

sudo su
python --version 
update-alternatives --list python 
update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 
update-alternatives --install /usr/bin/python python /usr/bin/python3.9 2 
update-alternatives --config python  
