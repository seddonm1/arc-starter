docker run \
-d \
--rm \
-v /tmp/arc-jupyter:/local \
-v $(pwd):/home/jovyan \
-e "ETL_JOB_ROOT=/home/jovyan" \
-e "SPARK_OPTS='--driver-memory=4G'" \
-e "SPARK_LOCAL_DIRS=/local" \
-e "SPARK_WORKER_DIR=/local" \
-p 4040:4040 \
-p 8888:8888 \
seddonm1/arc-jupyter:0.0.7 \
start-notebook.sh \
--NotebookApp.password='' \
--NotebookApp.token=''
docker cp ./.jars/*.jar $(docker ps --latest --quiet):/usr/local/spark-2.4.3-bin-hadoop2.7/jars
docker attach $(docker ps --latest --quiet)
