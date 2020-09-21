FROM ubuntu

MAINTAINER Pavan

RUN apt-get update && apt-get install -y gnupg2 && apt-get install -y wget && apt-get install -y curl && apt-get -y install openjdk-8-jdk

EXPOSE 9000

ADD target /target

ADD conf /conf

#COPY entrypoint.sh /entrypoint.sh

#CMD chmod +x /target/universal/stage/bin/gha-fargate-poc

#ADD entrypoint.sh /entrypoint.sh

#CMD chmod +x /entrypoint.sh

#CMD /target/universal/stage/bin/gha-fargate-poc -Dplay.http.secret.key='QCY?tAnfk?aZ?iwrNwnxIlR6CTf:G3gf:90Latabg@5241AB`R5W:1uDFN];Ik@n'

#ENTRYPOINT ["./entrypoint.sh"]

ENTRYPOINT /target/universal/stage/bin/gha-fargate-poc -Dplay.http.secret.key='QCY?tAnfk?aZ?iwrNwnxIlR6CTf:G3gf:90Latabg@5241AB`R5W:1uDFN];Ik@n'
