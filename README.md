# rpi-grafana
Dockerfile to build and run Grafana 3 on a Raspberry Pi. Workflow has been tested on a armv6l chip (RPi B+). Some tuning may be required in order to autobuild using Docker. RPi A+ doesn't have enough memory to build Grafana. Please use RPi B+.

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
