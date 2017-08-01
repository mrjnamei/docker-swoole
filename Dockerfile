FROM ubuntu:16.04

# 安装阿里源
COPY ./sources.list /etc/apt/sources.list
    # 安装 ppa .
#    export DEBIAN_FRONTEND=noninteractive && \
    # Update Package List
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale && \
    locale-gen en_US.UTF-8 && \


    apt-get update && \
    apt-get -y upgrade  && \
    apt-get install -y python-software-properties software-properties-common curl && \
    apt-add-repository ppa:ondrej/php -y && \
    apt-get update && \
    apt-get install -y \
    php7.1-cli php7.1-dev \
    php7.1-pgsql php7.1-sqlite3 php7.1-gd \
    php7.1-curl php7.1-memcached \
    php7.1-imap php7.1-mysql php7.1-mbstring \
    php7.1-xml php7.1-zip php7.1-bcmath php7.1-soap \
    php7.1-intl php7.1-readline php-xdebug php-pear

