## Scripts de instalação para inventree-minerva-importer

Os scripts `linux-install.sh` e `windows-install.ps1` servem para instalar e configurar o **inventree-minerva-importer**, uma ferramenta que permite importar dados de peças da DigiKey para o sistema de gerenciamento de inventário Inventree.

**O que os scripts fazem:**

* **Instalam o pacote python-venv:** Cria um ambiente virtual Python isolado para o inventree-minerva-importer.
* **Cria e ativa o ambiente virtual:** Um ambiente virtual é um espaço dedicado com suas próprias bibliotecas Python, onde o inventree-minerva-importer pode ser instalado sem afetar outras aplicações.
* **Instala o inventree-part-import:** Esta biblioteca Python é necessária para importar dados de peças para o Inventree.
* **Remove a pasta digikey:** Remove uma biblioteca antiga que pode causar conflitos.
* **Clona o repositório inventree-minerva-importer:** Baixa o código-fonte da ferramenta do GitHub.
* **Move a pasta inventree-minerva-importer/digikey:** Instala a ferramenta no ambiente virtual.
* **Desativa o ambiente virtual:** Libera os recursos do sistema e permite que você use o Python para outras tarefas.

**Como fazer a instalação:**
```
# Se for Linux
bash install_inventree_minerva_importer.sh

# Se for Windows
.\install_inventree_minerva_importer.ps1
```

**Após a instalação:**

Para importar peças, basta usar o comando `inventree-part-import`, seguido dos números de peça do fornecedor ou fabricante das peças que você deseja importar.

```
$ inventree-part-import <part_number_1> <part_number_2> ...
```
Você também pode importar em lote várias partes de arquivos de dados tabulares (.csv, .xlsx, etc.), assim:
```
$ inventree-part-import parts.csv
```

* **Ative o ambiente virtual:** Use `source env/bin/activate` no Linux ou `env\Scripts\activate` no Windows.
* **Execute o inventree-part-import:** Siga as instruções na documentação da ferramenta: [https://github.com/30350n/inventree_part_import](https://github.com/30350n/inventree_part_import?tab=readme-ov-file#basic-usage)

**Observações:**

* Os scripts assumem que você já tem o Python instalado.
* O script do Windows usa `python -m venv` para criar o ambiente virtual. Se você estiver usando uma versão mais antiga do Python, use `virtualenv` em vez disso.
* O script do Windows usa `Move-Item` para mover a pasta digikey. Certifique-se de ter permissões de administrador para executar o script.

**Recursos adicionais:**

* **Site da DigiKey:** [https://www.digikey.com.br/](https://www.digikey.com.br/)
* **Documentação do inventree-minerva-importer:** [URL inválido removido]
* **Inventree:** [URL inválido removido]
