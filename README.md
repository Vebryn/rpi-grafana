# rpi-grafana
Dockerfile to build and run Grafana on a Raspberry Pi. It has been tested with Grafan 2.1 and a armv6l chip (rpi B+). I test compilation on a rpi A+, it appears it doesn't have enough RAM. Grafana works well if you take binaries from rpi B+.

## Usage
```
docker build --tag="grafana" .
docker run --detach=true --name grafana --publish=3000 --link influxdb:influxdb grafana
```
