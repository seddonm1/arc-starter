docker run \
--rm \
-v $(pwd):/data \
-e "ETL_CONF_ENV=production" \
-e "ETL_JOB_ROOT=/opt/tutorial/starter" \
-p 4040:4040 \
seddonm1/arc:1.11.0 \
bin/spark-submit \
--master local[*] \
--class au.com.agl.arc.ARC \
/opt/spark/jars/arc.jar \
--etl.config.uri=file:///data/job.json
