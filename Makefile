
build@standard:
	sudo docker build . -f ./Dockerfile -t wolnosciowiec/alpine-php5.4-mysql

build@apache:
	sudo docker build . -f ./Dockerfile-apache2 -t wolnosciowiec/alpine-php5.4-mysql:apache2

build: build@standard build@apache

push@standard:
	sudo docker push wolnosciowiec/alpine-php5.4-mysql

push@apache:
	sudo docker push wolnosciowiec/alpine-php5.4-mysql:apache2

push: push@standard push@apache

run_test_apache:
	sudo docker run --rm --name test_apache wolnosciowiec/alpine-php5.4-mysql:apache2
