#
FROM parscit

ADD . /varaag
WORKDIR /varaag

RUN ls -al
ENTRYPOINT ./parscit.sh
