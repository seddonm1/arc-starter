# download all the small files to versioned directories
cat ./raw_data_urls_small.txt | xargs -n1 rm -r
cat ./raw_data_urls_small.txt | xargs -n1 mkdir -p
cat ./raw_data_urls_small.txt | xargs -n2 -P4 wget -c -P 
rm -R https\:/

# create empty directory to demonstrate schema evolution
mkdir -p uber_tripdata/1/