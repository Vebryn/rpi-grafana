# rpi-grafana
Dockerfile to build and run Grafana on a Raspberry Pi. It has been tested with Grafana 3 and a armv6l chip (rpi B+). I test compilation on a rpi A+, it appears it doesn't have enough RAM. Grafana works well if you take binaries from rpi B+.

## Usage
```
docker build --tag="grafana" .
```
## Lite version
Lite version uses a compiled Grafana archive. If you don't have one, please compile it using default Dockerfile. To extract binaries, use Docker exec option to tar files from /opt/grafana.
Lite version has a smaller size and require less time to build.

To build lite version, specify Dockerfile name to Docker
```
docker build -f Dockerfile-lite .
```
