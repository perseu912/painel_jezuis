 echo ' atualizando os pacotes... \n'

sudo apt update -y
 echo 'modificando os pacotes que precisam ser atualizados... \n'

sudo apt upgrade -f -y
sudo apt dist-upgrade -y
echo ' baixando as ferramentas importantes do python3 ... \n' 

sudo apt install jupyter-notebook 
sudo apt install python3-qutip -y
sudo apt install python3-osmnx -y 
sudo apt install python3-numpy -y
sudo apt install python3-scipy -y
sudo apt install python3-geopandas -y
sudo apt install python3-basemap -y
sudo apt install python3-imageio -y
sudo apt install python3-opencv -y
sudo apt install pyton3-pip -y
sudo apt install python3-sympy -y
pip3 install osmnx==1.0.1
pip3 install mechanicalsoup
pip3 install beautifulsoup4
pip3 install geopy
pip3 install nbconvert

echo 'atualizA todas as bibliotecas do pip..'
pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
sudo apt install wget -y



chmod +x apps.sh 

./apps.sh

echo ' tudo pronto! por favor, Reinicie o PC'

#sudo reboot