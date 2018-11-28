docker run \
--rm \
-v $(pwd):/home/jovyan \
-e "ETL_JOB_ROOT=/home/jovyan" \
-e "SPARK_OPTS='--driver-memory=4G'" \
-p 4040:4040 \
-p 8888:8888 \
seddonm1/arc-jupyter:0.0.1
