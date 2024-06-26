./run-benchmark.py \
 --cluster-hostname gl3113.arc-ts.umich.edu \
    	-i /home/kirp/.ssh/id_ed25519 \
    	--ssh-user kirp \
    	--source-path /input1 \
    	--benchmark-path /myresult/load-100gb \
    	--benchmark tpcds-1gb-iceberg-load

./run-benchmark.py \
 --cluster-hostname gl3035.arc-ts.umich.edu \
    	-i /home/kirp/.ssh/id_ed25519 \
    	--ssh-user kirp \
    	--benchmark-path /myresult/load-1gb-query \
    	--benchmark tpcds-1gb-iceberg \
		--iterations 1

./run-benchmark.py \
	--cluster-hostname gl3035.arc-ts.umich.edu \ 
    --i /home/kirp/.ssh/id_ed25519 \
	--ssh-user kirp \
	--source-path "file:///home/kirp/db-scratch/try-1"    
	--scale 1 
	--cache-path "hdfs://hadoop1:9000/lhbench-cache-xzw" 
	--benchmark-path "hdfs://hadoop1:9000/lhbench-tables-xzw/"  
	--db-name "icebergload"  
	--table-mode cow 
	--partition-tables true 
	--benchmark tpcds-custom-ingestion-iceberg    
	--refresh-count 10  
	--iterations 3
