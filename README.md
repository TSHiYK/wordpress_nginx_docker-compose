# wordpress_nginx_docker-compose

Docker Compose with Wordpress (PHP 7.2), Nginx and MariaDB.

- Alpine Linux & Nginx - `nginx:alpine`
- MariaDB - `mariadb`
- WordPress & PHP 7.2 - `wordpress:php7.2-fpm`

## How to use

Create `.env` file on the root of the project. If you use a default settings, `.env` file's contents is bellow.

```.env
WORDPRESS_DB_NAME=wordpress
WORDPRESS_TABLE_PREFIX=wp_
WORDPRESS_DB_HOST=mysql
WORDPRESS_DB_USER=root
WORDPRESS_DB_PASSWORD=password

MYSQL_ROOT_PASSWORD=password
MYSQL_DATABASE=wordpress
MYSQL_USER=root
MYSQL_PASSWORD=password
```

### Run containers with compose

`$ docker-compose up -d`

The app will be running at [http://localhost:8080](http://localhost:8080).

### Shut it down

`$ docker-compose down -v`
