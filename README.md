# ARC Starter

A starter project to begin coding an [ARC](https://github.com/aglenergy/arc) job using the Jupyter Notebook interface.

## Running

Clone this repository then run the included shells script. The user interface will then be available at http://localhost:8888 and the token will be printed to the console.

```bash
./.develop.sh
```

The `.develop.sh` script contains a hard coded memory allocation for [Apache Spark](https://spark.apache.org/) which should be configured for your specific environment. e.g. to change from `4G` to `8G` change:

```bash
-e "SPARK_OPTS='--driver-memory=4G'" \
```

to 

```bash
-e "SPARK_OPTS='--driver-memory=8G'" \
```

## Screenshot

![ARC in Jupyter Notebooks](./.img/screenshot.png)
