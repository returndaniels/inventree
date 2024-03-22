## Script Linux para instalar e configurar o inventree-minerva-importer

**Observações:**

- Este script foi criado para Ubuntu 22.04 LTS e Windows. Adapte-o para outras distribuições se necessário.
- Certifique-se de ter o Git instalado antes de executar o script.
- O script instala o inventree-part-import na versão mais recente. Se você precisar de uma versão específica, altere o comando `pip install inventree-part-import` para `pip install inventree-part-import==<versão>`.
- O script remove a pasta `digikey` do site-packages do Python. Se você tiver outros pacotes que usam essa pasta, eles podem ser desativados.

**Exemplo de uso:**
Você precisa criar o arquivo de configuração `config.yaml` antes de executar o comando `inventree-part-import`.

```
# Se for Linux
bash install_inventree_minerva_importer.sh

# Se for Windows
.\install_inventree_minerva_importer.ps1

# Ativa o ambiente virtual

# Se for Linux
source env/bin/activate

# Se for Windows
env\Scripts\activate

# Importa peças da DigiKey
inventree-part-import digikey --config config.yaml

# Desativa o ambiente virtual
deactivate
```
