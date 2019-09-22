# wp-plugin-adobesign

Docker Compose with Wordpress (PHP 7.3), Nginx and MariaDB.

- Alpine Linux & Nginx - `nginx:alpine`
- MariaDB - `mariadb`
- WordPress & PHP 7.3 - `wordpress:php7.3-fpm`

PHPUnit's version is 8.

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

## Initial Settings

Access to wordpress container.

`$ docker-compose exec wordpress /bin/bash`

Install WordPress and set a name and an email of an admin user.

`# wp core install --allow-root --url="http://localhost:8080" --title="test" --admin_user="wpadmin" --admin_email="wpadmin@sample.com"`

Note: Make a note of the password of Admin password.

`Admin password: **********`

### Optional: Change your language of WordPress

Change your language of WordPress to Japanese.

```
# wp language core install ja  --allow-root
# wp language core activate ja --allow-root
```
