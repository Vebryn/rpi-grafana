FROM hypriot/rpi-golang:1.4.2

RUN go get github.com/grafana/grafana \
	&& cd src/github.com/grafana/grafana/ \
	&& go run build.go setup \
	&& godep restore \
	&& go build . \
	&& apt-get update \
	&& apt-get install -qy --no-install-recommends wget bzip2 \
	&& wget https://iojs.org/dist/v2.5.0/iojs-v2.5.0-linux-armv6l.tar.gz \
	&& tar zxf iojs-v2.5.0-linux-armv6l.tar.gz \
	&& PATH=`pwd`/iojs-v2.5.0-linux-armv6l/bin:$PATH \
	&& npm install \
	&& npm install -g grunt-cli \
	&& node node_modules/karma-phantomjs-launcher/node_modules/phantomjs/install.js \
	&& grunt \
	&& mkdir /opt/grafana \
	&& cp -r grafana conf public_gen /opt/grafana

EXPOSE 3000
VOLUME /opt/grafana

ENTRYPOINT ["/opt/grafana/grafana"]
