FROM ubuntu:16.04

# 安装阿里源
COPY ./sources.list /etc/apt/sources.list
    # 安装 ppa .
#    export DEBIAN_FRONTEND=noninteractive && \
    # Update Package List
RUN apt-get update
#
#    # Update System Packages
    apt-get -y upgrade
#
#    # Force Locale
#
##    echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale && \
##    locale-gen en_US.UTF-8 && \
##
##    # Install Some PPAs
##
    apt-get install -y python-software-properties software-properties-common curl && \
##
    apt-add-repository ppa:nginx/development -y && \
    apt-add-repository ppa:chris-lea/redis-server -y && \
    apt-add-repository ppa:ondrej/php -y && \
#
#    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
#    curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
#
#    # gpg: key 5072E1F5: public key "MySQL Release Engineering <mysql-build@oss.oracle.com>" imported
#    # apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 5072E1F5
#    # sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu/ xenial mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'
#
#    # wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
#    # sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'
#
#    curl -s https://packagecloud.io/gpg.key | apt-key add - && \
#    echo "deb http://packages.blackfire.io/debian any main" | tee /etc/apt/sources.list.d/blackfire.list && \
#
#    curl --silent --location https://deb.nodesource.com/setup_6.x | bash - && \
#
#    # Update Package Lists
#
    apt-get update && \
#
#    # Install Some Basic Packages
#
    apt-get install -y build-essential dos2unix gcc git libmcrypt4 libpcre3-dev ntp unzip \
    make python2.7-dev python-pip re2c supervisor unattended-upgrades whois vim libnotify-bin \
    pv cifs-utils mcrypt && \
##
##    # Set My Timezone
##
##    ln -sf /usr/share/zoneinfo/UTC /etc/localtime && \
##
##    # Install PHP Stuffs
##    # Current PHP
    apt-get install -y \
    php7.1-cli php7.1-dev \
    php7.1-pgsql php7.1-sqlite3 php7.1-gd \
    php7.1-curl php7.1-memcached \
    php7.1-imap php7.1-mysql php7.1-mbstring \
    php7.1-xml php7.1-zip php7.1-bcmath php7.1-soap \
    php7.1-intl php7.1-readline php-xdebug php-pear

