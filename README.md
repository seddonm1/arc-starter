# Arc Starter

A starter project to begin coding an [Arc](https://github.com/aglenergy/arc) job using the Jupyter Notebook interface.

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

## How to execute

By default everything will be executed as an Arc stage but if needed SQL can be executed directly by using the Jupyter `%%sql` magic which can speed development:

```sql
%%sql
SELECT * 
FROM green_tripdata0_raw
```

## Screenshot

![ARC in Jupyter Notebooks](./.img/screenshot.png)
