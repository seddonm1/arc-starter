# keep only the top 50000 lines from each csv and gzip them
find . -name "*.csv" -type f | xargs -I {} bash -c "head -50000 {} > {}.head"
find . -name "*.csv" -type f | xargs -I {} bash -c "mv {}.head {}"
find . -name "*.csv" -type f | xargs -I {} bash -c "gzip {}"
