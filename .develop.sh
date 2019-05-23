docker run \
--name arc-jupyter \
--rm \
-v $(pwd)/tutorial:/home/jovyan/tutorial \
-e JAVA_OPTS="-Xmx4g" \
-p 4040:4040 \
-p 8888:8888 \
seddonm1/arc-jupyter:0.0.9 \
start-notebook.sh \
--NotebookApp.password='' \
--NotebookApp.token=''
