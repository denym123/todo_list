# Aplicativo de Lista de Tarefas com SQLite e Provider no Flutter

Este é um projeto de estudo de um aplicativo de lista de tarefas desenvolvido em Flutter, utilizando SQLite como banco de dados local e Provider para gerenciamento de estado.

## Funcionalidades

- Adicionar, editar e excluir tarefas.
- Marcar tarefas como concluídas.
- Persistência de dados usando SQLite.
- Gerenciamento de estado utilizando Provider.

## Pré-requisitos

- Flutter SDK instalado. Para instruções de instalação, visite [flutter.dev](https://flutter.dev/docs/get-started/install).
- Conhecimento básico de Flutter, SQLite e gerenciamento de estado com Provider.

## Como Utilizar

Para executar este projeto localmente, siga os passos abaixo:

### Clonar o repositório

```bash
git clone https://github.com/seu-usuario/todo_list_flutter_sqlite_provider.git
cd todo_list_flutter_sqlite_provider
```

### Instalar Dependências

No diretório raiz do projeto, execute:

```bash
flutter pub get
```

### Executar o Aplicativo

Para rodar o aplicativo em um emulador ou dispositivo conectado:

```bash
flutter run
```

## Estrutura do Projeto

A estrutura do projeto está organizada da seguinte forma:

- **`lib/`**: Contém todo o código-fonte do aplicativo.
    - **`modules/`**: Módulos do aplicativo.
        - **`task_list/`**: Módulo de lista de tarefas.
            - **`data/`**: Classes de dados para gerenciamento das tarefas.
            - **`presentation/`**: Telas e widgets da interface do usuário relacionados à lista de tarefas.
            - **`task.dart`**: Modelo da tarefa.
        - **`task_detail/`**: Módulo de detalhes da tarefa.
            - **`data/`**: Classes de dados para detalhes da tarefa.
            - **`presentation/`**: Telas e widgets da interface do usuário relacionados aos detalhes da tarefa.
            - **`task_detail.dart`**: Tela de detalhes da tarefa.
    - **`shared/`**: Componentes reutilizáveis compartilhados entre os módulos.
    - **`main.dart`**: Ponto de entrada do aplicativo.

## Contribuições

Contribuições são bem-vindas! Se você encontrou algum problema ou tem sugestões, sinta-se à vontade para abrir uma issue ou enviar um pull request.