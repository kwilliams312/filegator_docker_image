# filegator 

create a volume pointing to `/var/www/html/repository` to where your files are located

mount the configuration file

mount the users file

/var/www/html/private/users.json
/var/www/html/configuration.php

$ docker run -v /config/config.yml:/var/www/config.yml:rw myapp

