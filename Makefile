
def:
	docker build -t pyramation/latex:alpine latex/

ssh:
	docker run -v `pwd`/tex:/usr/src -i -t pyramation/latex:alpine /bin/bash
