echo "Contenedor Datacontainer"
docker create --name datacontainer -v /wordpress_data/:/usr/share/nginx/html/wp-admin -v /mysql_data/:/var/lib/mysql centos

echo "Configurar la xarxa"
docker network create wordsql

echo "Contenedor db"
docker run -itd -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE1=wordb -e MYSQL_USER1=keenneeth -e MYSQL_PASSWORD1=keenneeeth --volumes-from datacontainer --network wordsql --name db orboan/dcsss-mariadb

echo "Contenedor Nginx-PHP"
docker run -itd -p 8080:80 --name nginx --network wordsql  keenneeth/wordpress-nginx
