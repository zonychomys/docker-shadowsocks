FROM centos:7
MAINTAINER 245967906<245967906@qq.com>
RUN set -x \
    && yum -y install autoconf gcc gcc-c++ gettext make wget \
    && wget 'http://www.privoxy.org/sf-download-mirror/Sources/3.0.24 (stable)/privoxy-3.0.24-stable-src.tar.gz' \
    && tar xf privoxy-3.0.24-stable-src.tar.gz \
    && cd privoxy-3.0.24-stable/ \
    && autoheader \
    && autoconf \
    && ./configure \
    && make \
    && make -s install
COPY docker-entrypoint.sh /usr/local/bin/
COPY conf/config.template /etc/privoxy/config.template
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 8118
CMD ["privoxy", "--no-daemon", "/etc/privoxy/config"]
