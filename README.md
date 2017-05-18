# aws-elasticbeanstalk-extensions-sample

O ebextensions é uma forma de configurar o ambiente da aplicação quando se faz o deploy via ElasticBeastalk.


## Estrutura ## 

Na raiz do projeto deve existir o diretório `.ebextensions` e nele os arquivos de configuração (`.config`).

e.g.

.ebextensions/<br/>
.ebextensions/run.config<br/>
.ebextensions/99app-commands.bat<br/>
index.html

Mais informações:<br/>
http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/ebextensions-optionsettings.html

## sample 1 ##

Exemplo no formato YAML

Cria um arquivo `.bat` que faz um ping em uma url qualquer.<br/>
Agenda no Task Scheduler a execução desse script a cada 1 hora.<br/>
Dá permissão de escrita em uma pasta.<br/>

## sample 2 ##

Exemplo no formato json

Faz o download de um arquivo `.zip` e descompacta em uma pasta.<br/>
Copia o arquivo `99app-commands.bat` no pipeline de execução do ElasticBeanstalk. Importante notar que o nome do arquivo começa com `99` para que seja o último script a rodar no pipeline.<br/>

O script `99app-commands.bat` faz um log da operação e transfere os arquivos que estavam no arquivo `.zip` para dentro da pasta `wwwroot` do iis.




