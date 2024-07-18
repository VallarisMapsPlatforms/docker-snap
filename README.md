# docker-snap
An Docker image build with ESA SNAP Toolboxes and Python SNAP Environment

### Pulling from Docker Hub
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
