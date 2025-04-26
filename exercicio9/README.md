# 🌐 Criando uma imagem personalizada com Nginx para hospedar uma landing page

Este exercício tem como objetivo criar uma imagem Docker personalizada com um servidor **Nginx** para hospedar uma landing page HTML/CSS estática baseada no template **Material Kit** da Creative Tim.

---

## 🧱 Estrutura do Projeto

A estrutura do diretório está assim:

```
meu-webserver/
├── dockerfile             # Dockerfile com as instruções para criação da imagem
├── nginx.conf             # Arquivo de configuração personalizado do Nginx
├── site/                  # Pasta com os arquivos estáticos (HTML, CSS, JS)
└── README.md              # Este arquivo
```

---

## 🔨 Build da Imagem

Dentro da pasta do projeto:

```bash
docker build -t 09-meu-webserver-nginx .
```

> [!NOTE]\ Se estiver usando Rancher Desktop com WSL (Ubuntu), certifique-se de estar no diretório correto usando:
> ```bash
> cd /mnt/c/Users/seuUsuario/seuProjeto
> ```

---

## ▶️ Executando o container

```bash
docker run --name container-nginx -d -p 8080:80 09-meu-webserver-nginx
```

> [!NOTE]> - `-d`: Executa o container em segundo plano (detached).
> - `-p 8080:80`: Mapeia a porta 80 do container para a porta 8080 do host.
> - `--name`: Nome amigável para o container.

Depois de rodar o comando, abra o navegador e acesse:

```
http://localhost:8080
```

Você deverá visualizar a landing page do Material Kit.

---

## ✨ Sobre o Site

O conteúdo do diretório `site/` foi clonado do repositório oficial da Creative Tim:

- [Material Kit - Creative Tim (GitHub)](https://github.com/creativetimofficial/material-kit)

> 📍 Certifique-se de que o diretório `site/` contém todos os arquivos `index.html`, `css/`, `js/`, `assets/`, etc.

---

## 🛠 Tecnologias utilizadas

- [Docker](https://www.docker.com/)
- [Nginx](https://www.nginx.com/)
- [Rancher Desktop](https://rancherdesktop.io/)
- [WSL - Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/)
- [Creative Tim - Material Kit](https://www.creative-tim.com/product/material-kit)

---