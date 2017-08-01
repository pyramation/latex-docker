FROM ubuntu:16.10

RUN apt-get update
RUN apt-get install -y texlive-full
RUN apt-get install -y python-software-properties
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install nodejs

# apt-get install texlive-lang-all
# for latexdiff
# apt-get install libalgorithm-diff-perl
# TODO move latexdiff and rtf2latex2e into bin!

ADD mount/etc /etc
ADD mount/dotfiles /root

VOLUME ["./tex:/usr/src"]
WORKDIR /usr/src
