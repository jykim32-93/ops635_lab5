FROM centos
MAINTAINER docker_manager.jykim32.ops <root@docker_manager.jykim32.ops>

RUN dnf -y install httpd
RUN echo "Version 1" > /var/www/html/index.html

EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
