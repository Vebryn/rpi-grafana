FROM hypriot/rpi-golang

RUN go get -t -d github.com/grafana/grafana \
	&& cd src/github.com/grafana/grafana \
	&& go run build.go setup \
	&& godep restore \
	&& apt-get update \
	&& apt-get install --no-install-recommends -qy wget curl libfreetype6 libfontconfig1 \
	&& cd /usr/local/bin \
	&& wget https://github.com/piksel/phantomjs-raspberrypi/raw/master/bin/phantomjs \
	&& chmod a+x phantomjs \
	&& cd /gopath1.5/src/github.com/grafana/grafana \
	&& curl -sLS https://apt.adafruit.com/add |bash \
	&& apt-get install -qy node \
	&& npm install -g grunt-cli \
	&& npm install \
	&& go run build.go build package
