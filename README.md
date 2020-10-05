

# Requisitos

- Python3 - 3.8.5  -  https://www.python.org/downloads/

- Robot Framework - 3.2.2

- JDK 8/JRE - https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html

- Android Studio - https://developer.android.com/studio

- NodeJS - 12.18.1 LTS - https://nodejs.org/pt-br/download/

- Appium Desktop - https://github.com/appium/appium-desktop/releases

  ------

  

## Instalação  Dependências


```
//execute somente com python instalado.
pip install robotframework
pip install robotframework-seleniumlibrary

//execute somente com o Node instalado
npm install appium -g
npm install appium-doctor -g

//execute apos a instalação de todas as depencias do projeto
pip install --upgrade robotframework-appiumlibrary
```

------

## Instalação JDK & JRE

Download - https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html

Faça o download do Java SE Development Kit na versão do sistema da sua maquina. Ao instalar o JDK ao final de sua instalação aparecera uma caixa com a instalação do JRE

*Obs: É necessário uma conta no site da Oracle para efetuar o download.*

Em Seguida Adicione as Variáveis de Ambiente

------

## Acessando as Variáveis de Ambiente

Para adicionar uma nova variável de ambiente no Windows, pressionando os botões  WINDOWS + R subira a caixa de executáveis do Windows nela digite sem as aspas  "sysdm.cpl" abrira propriedades do Sistema.

Na aba "Avançado" clique em "Variáveis de Ambiente"

*Obs: Todos os recursos serão adicionados na parte de baixo em  "Variáveis do sistema"*

------

### Adicionando um nova Variável de Sistema:

​	"Clicando em Novo..." abrira uma caixa com:

- nome da variável:  

- Valor da variável: 

  Adicione as duas variáveis abaixo.

------

- nome da variável:  JAVA_HOME

  - Valor da variável: C:\Program Files\Java\jdk"versão instalada"			<= //procure na pasta especificada para saber a versão correta do "jdk"


- nome da variável:  ANDROID_HOME
- Valor da variável: C:\Users\\"seu usuario"\AppData\Local\Android\Sdk



Adicionando ao Path do Windows:

Dentro de "Variáveis do sistema" existe uma variável de sistema chamada ""Path "" clicando nela e em seguida "Editar..." aparecera uma nova janela, a direita dessa janela haverá um botão chamado "Novo", clicando nela adicionaremos novas linhas.

- %JAVA_HOME%\bin
- %ANDROID_HOME%\platform-tools
- %ANDROID_HOME%\tools
- %ANDROID_HOME%\tools\lib
- %ANDROID_HOME%\tools\bin

------

## Instalação Android Studio

Download -  https://developer.android.com/studio

> Configure - AVD Manager
>
> Device - Pixel 2 com PlayStore
>
> System Image - Pie - Android 9.0

Na primeira execução do app aparecera a opção de "Import Android Studio Settings" selecione a opção "Do not import settings" e clique em "ok"

Em ""Install Type"" selecione a opção "Standard" e clique em next, em "Verify Settings" ele fara outros download apenas clique em "Finish"

Obs: Qualquer erro durante o download dos componentes, desinstale o Android Studio e instale de novamente.

Abrindo o "Android Studio" clicando no botão ""Configure "" na parte inferior da tela, terá a opção "AVD Manager" clicando nela clique em "Create a Virtual Device" é recomendado que utilizar o dispositivo "Pixel 2 com a Play Store" clicando em "Next" baixe a imagem "Pie Versão 9.0"

Em "Your Virtual Devices" clicando em no botão play emulara o seu android virtual

## Appium Desktop

Download: https://github.com/appium/appium-desktop/releases

Para subir o servidor do appium basta clicar no botão ""Start Server"".

## Execução

A execução tem que ser feita na pasta OP.GG.

```
robot -d ./logs tests
```

------

#### Verificações

```
java -version
node --version
npm --version

appium-doctor --android // comando que fara um diagnostico do pc para saber se o mesmo está preparado 						   para rodar sessões do appium com o android, nele as opções "ANDROID_HOME, 						  JAVA_HOME e o Node version tem que esta verde"

echo %JAVA_HOME%	// esse comando só funcionara com a execução da criação das variáveis de Ambiente
echo %ANDROID_HOME%	// esse comando só funcionara com a execução da criação das variáveis de Ambiente
echo %PATH%
```
