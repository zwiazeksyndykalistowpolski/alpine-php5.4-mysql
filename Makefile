build:
	sudo docker build . -t wolnosciowiec/alpine-php5.4-mysql

push:
	sudo docker push wolnosciowiec/alpine-php5.4-mysql
