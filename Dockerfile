FROM openshift3/jenkins-agent-maven-35-rhel7:latest
USER root
RUN yum-config-manager --enable rhel-7-server-extras-rpms && \
    yum -y install skopeo && \
    yum clean all
USER 1001
