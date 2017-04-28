FROM theskyinflames/docker-eclipse:4.6.1

RUN curl -Lk 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/3/eclipse-committers-neon-3-linux-gtk-x86_64.tar.gz&r=1' -o neon.tar.gz && \
    tar xf neon.tar.gz && \
    rm neon.tar.gz

RUN sudo apt update && sudo apt -y install git

USER developer
