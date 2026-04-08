1 **Explique tecnicamente o que é um objeto do tipo Future no Dart e por que ele é retornado por funções de requisição web.**
Um objeto que depende de uma resposta futura para ser utilizado, ele é retornado pelo fato de precisar esperar a conexão para ele funcionar

2 **Qual é o impacto do comando await no fluxo de execução de uma função marcada como async?**
Que aquela parte do codigo vai aguardar a resposta de outra parte para começar a rodar

3 **Pesquise e explique brevemente o que significam os seguintes Status Codes do protocolo HTTP: 200, 401, 403 e 404.**
200 - OK 401 - Não Autorizado 403 - Proibido 404 - Não Encontrado

4 **Por que a nossa função main principal precisa ter a assinatura alterada para Future<void> main() async quando chamamos operações dependentes de rede diretamente nela?**
Por que na função main vai ter o await, logo ela precisa ser async com o future

5 **Qual é o papel da função jsonDecode quando recebemos a propriedade .body de uma resposta HTTP?**
Para converter e ler o json

-- PARTE FINAL

1 **Qual foi o caminho técnico exato que você precisou fazer no código da Função Especialista para retornar apenas a lista de livros, ignorando as outras informações que a API enviava na raiz do JSON?**
Direcionar exatamente o termo que eu quero para o código

2 **Descreva como você resolveu o problema de navegação de dados aninhados para extrair apenas os nomes dos vilões.**
Criei uma classe de viloes e fui instanciando o nome dos viloes e adicionando a uma lista

3 **O que acontece no seu terminal se você tentar rodar o programa com a internet do seu computador desligada? Qual estrutura do código foi responsável por capturar esse comportamento e evitar que o programa fechasse inesperadamente com um erro vermelho no console?**
Try catch
