# ESA SNAP Container
An Docker image build with ESA SNAP Toolboxes and Python SNAP Environment  
From [SNAP - ESA's SentiNel Application Platform](https://step.esa.int/main/download/snap-download/)

### Tags
- [latest](https://github.com/VallarisMapsPlatforms/docker-snap), [10.0](https://github.com/VallarisMapsPlatforms/docker-snap) ESA SNAP All Toolboxes 10.0, Python 3.10

### Pulling from Docker Hub
[Docker Repository](https://hub.docker.com/r/vallarismaps/esa-snap)  

``` shell
docker pull vallarismaps/esa-snap
```

## Run
``` shell
docker run -it vallarismaps/esa-snap
```
Default execute as gpt command

``` shell
docker run -it vallarismaps/esa-snap bash
```
Execute as Bash


## Default installed 
* ESA SNAP Toolbox (All Toolboxes)
* Python 3.10.14
* esa-snappy Python library

## Python library Import
``` python
from esa_snappy import GPF
from esa_snappy import ProductIO
from esa_snappy import jpy, ProgressMonitor
import esa_snappy
```
