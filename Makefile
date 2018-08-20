build:
	sudo docker build . -f ./Dockerfile -t wolnosciowiec/alpine-php5.4-mysql
	sudo docker build . -f ./Dockerfile-apache2 -t wolnosciowiec/alpine-php5.4-mysql:apache2

push:
	sudo docker push wolnosciowiec/alpine-php5.4-mysql
	sudo docker push wolnosciowiec/alpine-php5.4-mysql:apache2

