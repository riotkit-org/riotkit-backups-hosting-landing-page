
build:
	sudo docker build . -t riotkit/backups-landing-page

run:
	sudo docker run --rm -d -p 80:80 riotkit/backups-landing-page
