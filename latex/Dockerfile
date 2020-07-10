FROM node:12.18.2-alpine3.11

RUN apk add --no-cache texlive-full

RUN apk add --no-cache --virtual .build-deps \
    alpine-sdk 

RUN wget http://ftp.math.purdue.edu/mirrors/ctan.org/support/rtf2latex2e/rtf2latex2e-2-0-1.zip \
    && unzip rtf2latex2e-2-0-1.zip \
    && cd rtf2latex2e-2-0-1 \
    && make \
    && make install

RUN apk del .build-deps

# install texlive-lang-all
# for latexdiff
# install libalgorithm-diff-perl

ADD mount/etc /etc
ADD mount/dotfiles /root

VOLUME ["./tex:/usr/src"]
WORKDIR /usr/src
