# filegator 

simple dockerfile to pull the latest version of filegator from the build release.


To run:
create a volume pointing to `/var/www/html/repository` - this is your file repository

create an empty `configuration.php` file and mount it to the container path: `/var/www/html/configuration.php`

create an empty `users.json` file and mount it to the container path: `/var/www/html/private/users.json`

After the inital run, you can add additional storage configuration to the configuration.php file and restart the container.

more details:
https://docs.filegator.io/configuration/storage.html
