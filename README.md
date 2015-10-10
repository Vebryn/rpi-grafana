# rpi-grafana
grafana on raspberry

# Prerequisites
* Raspberry PI based on ARM6 chip

# Usage
* Install Hypriot on your rpi
* Use following commands to build and run grafana container
```
docker build --tag="grafana" .
docker run --detach=true --name grafana --publish=3000 grafana
```
