
build@standard:
	sudo docker build . -f ./Dockerfile -t wolnosciowiec/alpine-php5.4-mysql
	sudo docker tag wolnosciowiec/alpine-php5.4-mysql quay.io/riotkit/php5.4-mysql-alpine

build@apache:
	sudo docker build . -f ./Dockerfile-apache2 -t wolnosciowiec/alpine-php5.4-mysql:apache2
	sudo docker tag wolnosciowiec/alpine-php5.4-mysql:apache2 quay.io/riotkit/php5.4-mysql-apache2-alpine

build: build@standard build@apache

push@standard:
	sudo docker push wolnosciowiec/alpine-php5.4-mysql
	sudo docker push quay.io/riotkit/php5.4-mysql-alpine

push@apache:
	sudo docker push wolnosciowiec/alpine-php5.4-mysql:apache2
	sudo docker push quay.io/riotkit/php5.4-mysql-apache2-alpine

push: push@standard push@apache

run_test_apache:
	sudo docker run --rm --name test_apache wolnosciowiec/alpine-php5.4-mysql:apache2
