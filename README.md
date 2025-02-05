### Automation - Robot Framework com Browser Library

Este repositório contém testes automatizados utilizando Robot Framework com a Browser Library.

Tecnologias Utilizadas

Robot Framework

Browser Library

Python

Requisitos

Certifique-se de ter instalado os seguintes requisitos:

Python 3.8+

Node.js (necessário para a Browser Library)

npm (vem junto com o Node.js)

pip

Instalação

Clone o repositório:

git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio

Crie um ambiente virtual e ative-o:

python -m venv venv
# No Windows
venv\Scripts\activate
# No macOS/Linux
source venv/bin/activate

Instale as dependências do projeto:

pip install -r requirements.txt

Instale a Browser Library:

rfbrowser init

Executando os Testes

Para executar os testes, utilize o seguinte comando:

robot -d results tests/

Ou, para um teste específico:

robot -d results tests/seu_teste.robot

Licença

Este projeto está sob a licença MIT - veja o arquivo LICENSE para mais detalhes.

