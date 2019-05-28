docker run \
--rm \
-v $(pwd)/tutorial:/home/jovyan/tutorial \
-e "ETL_CONF_ENV=production" \
-e "ETL_CONF_BASE_URL=/home/jovyan/tutorial" \
-p 4040:4040 \
seddonm1/arc:1.13.1 \
bin/spark-submit \
--master local[*] \
--class au.com.agl.arc.ARC \
/opt/spark/jars/arc.jar \
--etl.config.uri=file:///home/jovyan/tutorial/job/5/nyctaxi.json
