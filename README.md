# Projeto Cidades Inteligentes

Este projeto é uma API ASP.NET Core para a **gestão de resíduos urbanos**, que oferece endpoints para criar, consultar e gerenciar informações sobre resíduos. A aplicação foi desenvolvida e containerizada com Docker e conta com um pipeline de CI/CD automatizado para garantir integração contínua e deploy em ambientes staging e produção.

## Requisitos Atendidos
- **Pipeline de CI/CD**: Configurado com GitHub Actions para build, teste e deploy.
- **Containerização**: A aplicação foi containerizada com Docker.
- **Orquestração**: Gerenciada com Docker Compose para facilitar a execução e o gerenciamento de serviços.

---

## Como Rodar Localmente
1. **Clone o repositório**:
   
   git clone https://github.com/VictorMPSS/cidadesinteligentes.git
   cd cidadesinteligentes

Construa e suba o serviço com Docker Compose:

docker-compose up -d --build

- Acesse a API:

A API estará disponível em:

http://localhost:8080/api/lixo

- Verificar o Status do Container:

docker ps

- Parar e Remover o Serviço: Para parar e remover os containers, execute:

docker-compose down

- Pipeline CI/CD
O pipeline foi implementado utilizando GitHub Actions e realiza:

- Build da aplicação.
Testes automatizados (se configurados).
Deploy em ambientes de Staging e Produção.

- Como Verificar o Pipeline
Acesse o repositório no GitHub.
Vá para a aba Actions.
Verifique o status das execuções e logs das pipelines.

- Tecnologias Utilizadas
ASP.NET Core 8.0: Framework para desenvolvimento da API.
Docker: Containerização da aplicação.
Docker Compose: Orquestração local de serviços.
GitHub Actions: Ferramenta de CI/CD para automação de builds e deploys.
Estrutura do Projeto
gestao-residuos-ASP.NET/: Contém todo o código-fonte da API.
Dockerfile: Definição do container da aplicação.
docker-compose.yml: Arquivo para orquestrar o serviço.
.github/workflows/: Contém o pipeline de CI/CD.
