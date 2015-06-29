# DOCKER PHP ENV

Configuracion para un docker con apache + php5

Para construirlo

docker build -t pcorderoe/phpenv .

Para correrlo

docker run -d -P --name phpenv -v /Users/patricio/Documents/Proyectos/DOCKER/PHPENV/www:/var/www pcorderoe/phpenv

El comando agrega soporte para carpetas compartidas con la maquina (boot2docker)
