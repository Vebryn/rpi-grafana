# rpi-grafana
Dockerfile to build and run Grafana on a Raspberry Pi. It has been tested with Grafan 2.1 and a armv6l chip (rpi A+/B+).

## Usage
```
docker build --tag="grafana" .
docker run --detach=true --name grafana --publish=3000 --link influxdb:influxdb grafana
```
