# lumen-Docker-project
To run quickly a new lumen project from scratch

1. `docker-copmose build`

2. `docker-copmose up -d`

The volume can took some times to be mount it link the 2 src in container and on the directory where you create the project.

You still need to go on the php_server to execute `php -S php_server:8001 -t public` to handle requests

Maybe one day (feel free to contribute <3)
