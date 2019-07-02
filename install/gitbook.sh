echo "Install Gitbook-cli"
npm install -g gitbook-cli
echo "Install Gitbook"
gitbook install

echo "Install Calibre dependencies"
sudo apt install python3-pyqt5 python3-pyqt5.qtmultimedia python3-pyqt5.qtquick -y
sudo apt install python3-pyqt5.qtwebkit -y

echo "Install Calibre"
CALIBRE_VER=3.44.0
CALIBRE_FILE=calibre-3.44.0-x86_64.txz
## set location to install
CALIBRE_PATH=/opt/calibre

curl -O -k https://download.calibre-ebook.com/${CALIBRE_VER}/${CALIBRE_FILE}
sudo mkdir -p ${CALIBRE_PATH} && sudo rm -rf ${CALIBRE_PATH}/*
sudo tar xvf $(pwd)/${CALIBRE_FILE} -C ${CALIBRE_PATH}
sudo ${CALIBRE_PATH}/calibre_postinstall
