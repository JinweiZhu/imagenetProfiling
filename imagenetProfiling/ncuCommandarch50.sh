
#gpu__dram_throughput.avg.pct_of_peak_sustained_elapsed


ncu --profile-from-start off --metrics dram__bytes_write.sum,dram__bytes_read.sum,smsp__sass_thread_inst_executed_op_fadd_pred_on,smsp__sass_thread_inst_executed_op_fmul_pred_on,smsp__sass_thread_inst_executed_op_ffma_pred_on --target-processes all python3 timeMain.py --epochs=1 --arch=resnet50 /tmp/imagenet 2>&1 | tee ncuTrial2.out