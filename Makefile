
def:
	docker build -t pyramation/latex:alpine latex/

ssh:
	docker run -v `pwd`/tex:/usr/src -i -t pyramation/latex:alpine /bin/bash

push:
	docker push pyramation/latex:alpine

latest:
	docker tag pyramation/latex:alpine pyramation/latex:latest
	docker push pyramation/latex:latest
