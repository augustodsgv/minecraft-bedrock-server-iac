if [ $(whoami) != "root" ]; then
    echo "Please run this script as root"
    exit 1
fi
apt update && apt upgrade -y
apt install python3-virtualenv -y
if [ ! -d "env" ]; then
    virtualenv env
fi
source env/bin/activate
apt install python3-pip -y
if [ pwd != "/home/test_server" ]; then
    cd /home/test_server
fi
pip install -r requirements.txt