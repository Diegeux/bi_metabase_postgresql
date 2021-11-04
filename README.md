# Documentação do projeto BI Open Source com Metabase

Business Intelligence (BI) com a ferramenta Metabase (Open Source) com integração do Banco de Dados Relacional PostgreSQL (Data Warehouse).

Business Intelligence ou Inteligência de Mercado é o processo de coleta, organização, análise, compartilhamento e monitoramento de informações que oferecem suporte a gestão de negócios.

## Ferramentas
PostgreSQL versão 13.0;

Metabase versão 0.39.1;

## Objetivo
Extrair, transformar e carregar os dados a partir de uma base de dados local, para analisarmos através de uma dashboard interativa como está a situação da gestão do negócio da empresa. Procuraremos responder as seguintes perguntas para a análise:

1) Qual é o valor de vendas realizado por produto? Qual é a média de venda de cada produto? Qual é o desvio padrão de cada produto? Em qual produto os dados estão mais uniformes?
2) Qual é o valor de vendas realizado por cada vendendor? Qual é a taxa que cada um representa?
3) Qual é o valor total de vendas realizado pela a empresa?
4) Qual é a quantidade de vendas realizado pela a empresa?
5) Qual é o ranking de vendas por loja?
7) Como foram as vendas durante o período de Janeiro de 2012 a Dezembro de 2015?

## Desenvolvimento
A princípio, criamos um Data Warehouse no PostgreSQL (banco de dados, schema e as tabelas).
![img0](https://user-images.githubusercontent.com/39379425/140392419-df22d4e1-2f9d-41a3-bc64-0977e306256f.jpg)

Posteriormente, integramos o Data Warehouse ao Metabase, onde poderemos coletar, explorar, organizar os dados para realizar análises a partir de insights. Atenção aos detalhes configurados, como, tipo e nome do banco de dados, usuário e senha, porta de conexão.
![img1](https://user-images.githubusercontent.com/39379425/140392426-9fd724d2-0228-47c5-8d0b-255da26f56d8.jpg)

Visualização do resultado da integração. Notamos que as tabelas foram todas carregadas corretamente.
![img2](https://user-images.githubusercontent.com/39379425/140392432-7bacfddf-77d4-4ce4-8ca1-ecc979db2667.jpg)

É importante salientar que as tabelas são distintas, porém, para realizar algumas análises haverá uma dependência entre elas, sendo assim, será necessário realizar junções (join). Portanto, vemos um exemplo de junção por coincidência (inner join) entre as tabelas TB_VENDAS e TB_VENDEDOR. Essa relação nos possibilita analisar, por exemplo, o valor total de vendas realizado por cada vendendor.
![img3](https://user-images.githubusercontent.com/39379425/140392434-de158f18-7fc4-436d-beca-ccfac6b39b3d.jpg)

Por fim, o resultado final, a dashboard criada com as análises desejadas.
![img4](https://user-images.githubusercontent.com/39379425/140392435-fa31efd8-154b-4429-a785-10492e23f6be.jpg)

## Conclusão
Podemos concluir que a estratégia de utilizar o Metabase (Open Source) é bastante relevante em alguns pontos: 

- A facilidade de manuseio faz com que usuário iniciante tenha uma boa compreensão e experiência prática no entendimento de Business Intelligence;

- Por ser Open Source, ou seja, código aberto, é mais acessível para negócios de todo tamanho, sem a necessidade de comprar, como é o caso das plataformas Power BI, Tableu e Qlik View;

- É possível realizar o trabalho de forma colaborativa entre diversos times;





