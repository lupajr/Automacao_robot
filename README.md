# Automation - Robot Framework com Browser Library

Este repositório contém testes automatizados utilizando **Robot Framework** com a **Browser Library**.

## 🚀 Tecnologias Utilizadas

- **Robot Framework**
- **Browser Library**
- **Python**

## 📌 Requisitos

Certifique-se de ter instalado os seguintes requisitos:

- **Python 3.8+**
- **Node.js** (necessário para a Browser Library)
- **npm** (vem junto com o Node.js)
- **pip**

## 🔧 Instalação

1. **Clone o repositório:**
   ```sh
   git clone [https://github.com/lupajr/Automacao_robot.git](https://github.com/lupajr/Automacao_robot.git)
   cd seu-repositorio
   ```

2. **Crie um ambiente virtual e ative-o:**

   **No Windows:**
   ```sh
   python -m venv venv
   venv\Scripts\activate
   ```

   **No macOS/Linux:**
   ```sh
   python -m venv venv
   source venv/bin/activate
   ```

3. **Instale a Browser Library:**
   ```sh
   rfbrowser init
   ```

## ▶️ Executando os Testes

Para executar todos os testes, utilize o seguinte comando:
```sh
robot -d results tests/
```

Ou, para executar um teste específico:
```sh
robot -d results tests/seu_teste.robot
```

## 📜 Licença

Este projeto está sob a licença **MIT** - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---
✍️ Criado por [Luiz Paulo](https://github.com/lupajr)

