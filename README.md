# aws-elasticbeanstalk-extensions-sample

O ebextensions � uma forma de configurar o ambiente da aplica��o quando se faz o deploy via ElasticBeastalk.


## Estrutura ## 

Na raiz do projeto deve existir o diret�rio `.ebextensions` e nele os arquivos de configura��o (`.config`).

e.g.

.ebextensions/<br/>
.ebextensions/run.config<br/>
.ebextensions/99app-commands.bat<br/>
index.html

Mais informa��es:<br/>
http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/ebextensions-optionsettings.html

## sample 1 ##

Exemplo no formato YAML

Cria um arquivo `.bat` que faz um ping em uma url qualquer.<br/>
Agenda no Task Scheduler a execu��o desse script a cada 1 hora.<br/>
D� permiss�o de escrita em uma pasta.<br/>

## sample 2 ##

Exemplo no formato json

Faz o download de um arquivo `.zip` e descompacta em uma pasta.<br/>
Copia o arquivo `99app-commands.bat` no pipeline de execu��o do ElasticBeanstalk. Importante notar que o nome do arquivo come�a com `99` para que seja o �ltimo script a rodar no pipeline.<br/>

O script `99app-commands.bat` faz um log da opera��o e transfere os arquivos que estavam no arquivo `.zip` para dentro da pasta `wwwroot` do iis.




