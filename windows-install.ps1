# Instale o python-venv (assumindo que você tenha o Python instalado)
pip install --upgrade pip setuptools wheel

# Crie um ambiente virtual chamado env
python -m venv env

# Ative o ambiente virtual
env\Scripts\activate

#Instalar inventtree-part-import
pip install inventree-part-import

# Remova a pasta digikey (assumindo que a versão do Python seja 3.x)
pip uninstall --user digitey

# Clone o repositório git
git clone https://github.com/minervarockets/inventree-minerva-importer.git

#Move a pasta Digikey
$userpath = $env:USERPROFILE
$libpath = "$userpath\AppData\Local\Programs\Python\Python3x" (Replace x with your Python version)
Move-Item -Path "inventree-minerva-importer\digikey" -Destination "$libpath\Lib\site-packages\"

# Desative o ambiente virtual
deactivate

echo "**Configuração concluída!**"
echo "Para usar inventree-minerva-importer, ative o ambiente virtual 'env' com 'env\Scripts\activate.bat'."