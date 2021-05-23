 echo ' atualizando os pacotes... \n'

sudo apt update -y
 echo 'modificando os pacotes que precisam ser atualizados... \n'

sudo apt upgrade -f -y
sudo apt dist-upgrade -y
echo ' baixando as ferramentas importantes do python3 ... \n' 

sudo apt install jupyter-notebook python3-qutip python3-osmnx python3-numpy python3-scipy python3-geopandas python3-basemap python3-imageio python3-opencv python3-sympy -y
pip3 install osmnx==1.0.1
pip3 install mechanicalsoup
pip3 install beautifulsoup4
pip install geopy
sudo apt install wget -y



chmod +x apps.sh 

./apps.sh

echo ' tudo pronto! por favor, Reinicie o PC'
