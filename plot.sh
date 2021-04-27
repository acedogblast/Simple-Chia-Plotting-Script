NUM_PLOTS=5 # The number of plots to make sequentially.
K_SIZE=32   # The k size of a plot. Must be at least 32.
BUFFER=8192 # The memory buffer size in MiB. Defualt is 4608.
THREADS=2   # The number of threads. No need over 2.
BUCKETS=128 # The number of buckets.

CHIA=/home/$USER/Apps/chia-blockchain/ # Your chia-blockchain directory

# activate chia venn
cd $USER
. ./activate

# TEMP_DIR is the temporary directory for plot creation.
TEMP_DIR=/mnt/chia_temp
# TEMP_2_DIR is the second temporary directory.
TEMP_2_DIR=/mnt/chia_temp
# FINAL_DIR is the final destination directory.
FINAL_DIR=/mnt/chia_plots
# LOG_DIR is the loging directory.
LOG_DIR=/mnt/chia_plots/log.txt

chia plots create -k $K_SIZE -n $NUM_PLOTS -b $BUFFER -r $THREADS -u $BUCKETS -t $TEMP_DIR -2 $TEMP_2_DIR -d $FINAL_DIR | tee -a $LOG_DIR
