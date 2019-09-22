# wp-plugin-adobesign

Docker Compose with Wordpress (PHP 7.3), Nginx and MariaDB.

- Alpine Linux & Nginx - `nginx:alpine`
- MariaDB - `mariadb`
- WordPress & PHP 7.3 - `wordpress:php7.3-fpm`

PHPUnit's version is 7.

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

### Initial Settings

`$ sh ./setup.sh`

- Install WordPress (set admin user)
- Change your language to Japanese

| Admin Name | Admin Email        | Admin Password |
| ---------- | ------------------ | -------------- |
| wpadmin    | wpadmin@sample.com | -              |

Note: Make a note of the password of Admin password.

`Admin password: **********`

### Run

`$ docker-compose up -d`

The app will be running at [https://localhost:8080](https://localhost:8080).

### Shut it down

`$ docker-compose down -v`

## How to unit test for plugin

- If you have your plugin directory, `docker-compose run --rm wordpress wp scaffold plugin-tests YOUR_PLUGIN_NAME --allow-root`.
- If you create a new plugin, `docker-compose run --rm wordpress wp scaffold plugin YOUR_PLUGIN_NAME --allow-root`.

### Test

`docker-compose exec wordpress bash -c "cd /var/www/html/wp-content/plugins/your-plugin-directory; phpunit"`
