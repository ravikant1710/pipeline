FROM centos:7
RUN yum -y install openssh-server
RUN yum install -y passwd
RUN /usr/sbin/sshd-keygen
RUN useradd remote_user && \
    echo "1234" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh
COPY remote-key.pub /home/remote_user/.ssh/authorized_keys
RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

#RUN /usr/sbin/sshd-keygen
CMD /usr/sbin/sshd -D
RUN yum install -y yum-utils 
RUN yum install -y python
RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
RUN yum -y install docker-ce docker-ce-cli containerd.io

RUN curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
CMD /usr/bin/docker -D

RUN mkdir /home/remote_user/maven
COPY  docker-compose.yml /home/remote_user/maven/docker-compose.yml
COPY  publish /home/remote_user/maven/publish
COPY  /tmp/auth /home/remote_user/maven/auth
ENTRYPOINT ["/home/remote_user/maven/publish"]
