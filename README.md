# rpi-grafana
grafana on raspberry
# Usage
* Install Hypriot on your rpi
* Use following commands to build and run grafana container
docker build --tag="grafana" .
docker run --detach=true --name grafana --publish=3000 grafana
