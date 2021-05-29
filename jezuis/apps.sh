
echo 'instalando pulgins Latex...'
sudo add-apt-repository ppa:texlive-backports/ppa
sudo apt-get update 
sudo apt-get install texlive-full -y
sudo apt install impressive -y
sudo apt install biblatex -y
sudo apt install latex-beamer -y
sudo apt instal texlive-latex-extra -y
sudo apt install gedit-latex-plugin -y
sudo apt install lyx -y
sudo apt install kile -y
sudo apt install texstudio -y
sudo apt install texmaker -y

echo 'instalando editores de fotos e videos '
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install gimp -y
sudo apt install avidemux -y
sudo apt install openshot -y
sudo apt install kdenlive -y
sudo wget -O light.deb 'https://cdn.lwks.com/releases/2021.2.1/lightworks_2021.2_r128456.deb'
sudo dpkg -i ./light.deb && sudo rm light.deb 

echo 'instalando o OBS Studio...'
sudo apt-get install ffmpeg -y
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update && sudo apt-get install obs-studio -y


echo "instalando o sublime text..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


sudo wget -O wps.deb 'https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10161/wps-office_11.1.0.10161.XA_amd64.deb'
echo 'instalando o WPS...'
sudo dpkg -i wps.deb && sudo rm wps.deb


sudo wget -O opera.deb 'https://download3.operacdn.com/pub/opera/desktop/75.0.3969.218/linux/opera-stable_75.0.3969.218_amd64.deb'
echo 'instalando o Opera Mini... '
sudo dpkg -i ./opera.deb && sudo rm opera.deb

sudo wget -O vs.deb 'https://az764295.vo.msecnd.net/stable/3c4e3df9e89829dce27b7b5c24508306b151f30d/code_1.55.2-1618307277_amd64.deb'
echo 'instalando o vs code ...'
sudo dpkg -i ./vs.deb && sudo rm vs.deb


sudo wget -O chrome.deb 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
echo 'instalando o Chrome...'
sudo dpkg -i chrome.deb && sudo   rm chrome.deb

sudo wget -O etcher.zip 'https://github-releases.githubusercontent.com/45055693/f1649b00-b28c-11eb-91ac-e898cbc496ed?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210529%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210529T173715Z&X-Amz-Expires=300&X-Amz-Signature=efb366bda5b54d560d2c59f5e1ac89b48bdb12fac55fd31f99da4ad21a4ecd26&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=45055693&response-content-disposition=attachment%3B%20filename%3Dbalena-etcher-electron-1.5.120-linux-x64.zip&response-content-type=application%2Foctet-stream'

sudo apt upgrade -f -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
#echo 'tudo pronto!'
