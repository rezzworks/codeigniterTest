- Unzip the code igniter source code to the `src` directory
- In the root directory (directory with `Dockerfile`), run the following at the command line:
  - To build the php/apache image: `docker build -t codeignitertest .`
  - To start the php/apache container: `docker run -d -p 8080:80 --name codeignitertest -v "$(pwd)/src:/var/www/html" codeignitertest`
  - To start the mysql container: `docker run --name mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:latest`

For more info:
- [Docker MySQL Image](https://hub.docker.com/_/mysql)
- [Docker Php Image](https://hub.docker.com/_/php)
- [Docker Commands](https://docs.docker.com/engine/reference/commandline/docker/)