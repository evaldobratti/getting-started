O MVP da aplicação foi um sucesso, e para a versão final vamos precisar de algumas funcionalidades que foram deixadas de lado anteriormente até obtermos aprovação do setor responsável para continuarmos com o projeto.

1. Nesta primeira fase o cadastro e listagem de usuários foi suficiente para encontrarmos o que precisávamos, mas agora também precisaremos da edição e exclusão de usuários. Além disso, precisamos reforçar a consistência e transformar o campo `name` do `User` obrigatório.
2. Precisaremos também adicionar um setor ao usuário, para conseguirmos identificar onde os usuários ficam situados dentro da empresa. O RH já nos passou uma lista de setores e eles estão disponíveis nos `seeds` do projeto. Lembre-se que o usuário só pode ser associado a um setor!
3. O setor de projetos também gostaria de classificar os usuários com os projetos que cada um está trabalhando atualmente, eles também já nos disponibilizaram uma lista de projetos atuais e que também está no `seeds` do projeto. Como essa é uma área muito dinâmica, os usuários poderão estar participando em mais de um projeto ao mesmo tempo!
4. Para fácil visualização, esses campos também deverão aparecer na listagem de usuários. Os projetos podem aparecer simplesmente separados por vírgulas.
5. Com essas novas associações no cadastro de usuário, gostaríamos de filtrar a listagem de usuários, por nome, setor e projetos que participam. Seria um bõnus adicionar um filtro de idade para selecionarmos usuários com idade entre 10-20, 20-30 anos, mas podemos deixar isso para uma próxima entrega se não for possível providenciar para essa.

Não há necessidade de se preocupar massivamente com o layout da aplicação, porque isso será feito pelo setor de front-end ao final de sua entrega, mas ainda é necessário podermos identificar e utilizar corretamente cada um dos pontos que foram desenvolvidos.

Para executar a aplicação no estado atual

  * `mix deps.get`
  * `mix ecto.setup`
  * `cd assets && npm install`
  * `mix phx.server`
  * http://localhost:4000

Se necessário:

  * Utilize `asdf` para configurar o `elixir` e `node` em seu ambiente
  * Utilize `docker run --name pg-obramax -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres:11.6` para rodar o banco de dados.
