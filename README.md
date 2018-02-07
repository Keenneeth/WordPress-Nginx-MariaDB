# WordPress-Nginx-MariaDB
 - Contenidor Datacontainer:
    Canviar el document root per tal de guardar les dades a /wordpress_data a /usr/share/nginx/html/wp-admin que es on estan ubicats  l'arxius html, css, js del wordpress i mantenint la ruta de la base de dades : /mysql_data/:/var/lib/mysql
  - Contenidor de Base de Dades :
    --network wordsql indica la xarxa 
    -e varibles d’entorn 
	  - MYSQL_ROOT_PASSWORD contrasenya de administrador de mariadb
    - MYSQL_DATABASE1, MYSQL_USER1, MYSQL_PASSWORD1 Crear usuari, contrasenya i una base de dades
    --volumes-from datacontainer carrega els volums del contenidor datacontainer per guardar les dades de la base de dades a /mysql_data
   -Contenidor Nginx amb PHP i script per WordPress
   Indicar la xarxa --network wordsql 
   -i contenidor interactiu
  -t amb una terminal
  -d contenidor en segon pla
  -p indicar el port de fora i dins del contenidor
  


