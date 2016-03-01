FROM praekeltfoundation/python-base
MAINTAINER Praekelt Foundation <dev@praekeltfoundation.org>

RUN apt-get-install.sh gcc
RUN apt-get-install.sh python-dev
RUN apt-get-install.sh libjpeg
RUN pip install vxyowsup
RUN pip install junebug
COPY ./junebug-entrypoint.sh /scripts/
EXPOSE 8080

ENTRYPOINT ["eval-args.sh", "dinit", "junebug-entrypoint.sh"]

CMD []
