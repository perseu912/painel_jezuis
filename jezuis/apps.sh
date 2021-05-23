
echo 'instalando pulgins Latex... \n'
sudo add-apt-repository ppa:texlive-backports/ppa
sudo apt-get update 
sudo apt-get install texlive-full impressive biblatex latex-beamer texlive-latex-extra gedit-latex-plugin lyx kile texstudio texmaker -y

echo 'instalando editores de fotos \n'
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install gimp -y


echo "instalando o sublime text..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


sudo wget -O wps.deb 'https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10161/wps-office_11.1.0.10161.XA_amd64.deb'

sudo wget -O opera.deb 'https://download3.operacdn.com/pub/opera/desktop/75.0.3969.218/linux/opera-stable_75.0.3969.218_amd64.deb'

sudo wget -O vs.deb 'https://az764295.vo.msecnd.net/stable/3c4e3df9e89829dce27b7b5c24508306b151f30d/code_1.55.2-1618307277_amd64.deb'

sudo wet -O chrome.deb 'https://www.google.com/chrome/thank-you.html?platform=linux&statcb=0&installdataindex=empty&defaultbrowser=0#'

echo 'instalando o Opera Mini... \n'
sudo dpkg -i ./opera.deb || echo 'erro ao instalar o Opera Mini. Tente novamente mais tarde.'

echo 'instalando o vs code ...'
sudo dpkg -i ./vs.deb

echo 'instalando o WPS...'
sudo dpkg -i wps.deb

echo 'instalando o Chrome...'
sudo dpkg -i chrome.deb

echo 'removendo downloads...'
rm opera.deb && rm vs.deb && rm wps.deb && rm chrome.deb

sudo apt upgrade -f -y
sudo apt dist-upgrade -y
sudo apt autoremove
#echo 'tudo pronto!'
