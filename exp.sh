# replace the spark old conf with new 10 conf
# then run the bash
for i in {1..10}
do
    old_path="/home/kirp/spark/conf/spark-defaults.conf"
    # /home/kirp/spark-defaults-0.conf
    new_path="/home/kirp/spark-defaults-$i.conf"
    cp $new_path $old_path
    bash query.sh
done