FROM centos:7
MAINTAINER 245967906<245967906@qq.com>
RUN set -x \
    && yum -y install gettext git m2crypto openssl-devel python-setuptools zlib-devel \
    && git clone -b master https://github.com/shadowsocks/shadowsocks.git \
    && cd shadowsocks/ \
    && python setup.py build \
    && python setup.py install \
    && rm -rf shadowsocks/
COPY docker-entrypoint.sh /usr/local/bin/
COPY conf/ss-local.json.template /etc/shadowsocks/ss-local.json.template
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 1080
CMD ["sslocal", "-c", "/etc/shadowsocks/ss-local.json"]
