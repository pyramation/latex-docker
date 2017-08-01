
def:
	docker-compose build

ssh:
	docker run -v `pwd`/tex:/usr/src -i -t pyramation/latex /bin/bash
