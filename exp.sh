# replace the spark old conf with new 10 conf
# then run the bash
bash /home/kirp/A-lakehouse-experiment-scripts/c.sh
# ./run-benchmark.py \
#  --cluster-hostname gl3076.arc-ts.umich.edu \
#     -i /home/kirp/.ssh/id_ed25519 \
# 	--ssh-user kirp \
# 	--source-path "file:///home/kirp/db-scratch/our-10gib" \
# 	--scale 1 \
# 	--cache-path "hdfs://10.164.8.126:9000/lhbench-cache/" \
# 	--benchmark-path "hdfs://10.164.8.126:9000/lhbench-table/"  \
# 	--benchmark tpcds-custom-ingestion-iceberg \
# 	--db-name "tpcds_sf1_iceberg"  \
# 	--table-mode cow \
# 	--refresh-count 10 \
# 	--iterations 1 \
# 	--partition-tables true

for i in {1..10}
do
    old_path="/home/kirp/spark/conf/spark-defaults.conf"
    # /home/kirp/spark-defaults-0.conf
    new_path="/home/kirp/spark-defaults-$i.conf"
    cp $new_path $old_path
	bash /home/kirp/A-lakehouse-experiment-scripts/c.sh
    bash query.sh
done