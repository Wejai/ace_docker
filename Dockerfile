
FROM ibmcom/ace

LABEL maintainer "Vijay"

ENV BAR1=hello.bar
COPY $BAR1 /tmp

RUN bash -c 'mqsicreateworkdir /home/aceuser/ace-server && mqsibar -w /home/aceuser/ace-server -a /tmp/$BAR1 -c'
