#!/bin/bash

# Instala o pacote python-venv
sudo apt install python3-venv

# Cria um ambiente virtual chamado env
python3 -m venv env

# Ativa o ambiente virtual
source env/bin/activate

# Instala o inventree-part-import
pip install inventree-part-import

# Remove a pasta lib/{python-name-version}/site-packages/digikey/
python -m pip uninstall --user digikey

# Clona o repositório git https://github.com/minervarockets/inventree-minerva-importer.git
git clone https://github.com/minervarockets/inventree-minerva-importer.git

# Move a pasta inventree-minerva-importer/digikey para lib/{python-name-version}/site-packages/
python -m site --user | sed 's/.*site-packages\///g' | while read -r dir; do
  mv inventree-minerva-importer/digikey "$dir"/digikey
done

# Desativa o ambiente virtual
deactivate

echo "**Configuração concluída!**"
echo "Para utilizar o inventree-minerva-importer, ative o ambiente virtual 'env' com o comando 'source env/bin/activate'."
