# setup
docker-compose run wordpress wp core install --allow-root --url="https://localhost" --title="test" --admin_user="wpadmin" --admin_email="wpadmin@sample.com"

# change language
docker-compose run wordpress wp language core install ja  --allow-root
docker-compose run wordpress wp language core activate ja --allow-root

# Uninstall default plugins and themes
docker-compose run wordpress wp plugin uninstall akismet hello --allow-root