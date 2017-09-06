# Usage ethminer [OPTIONS]
# Options:
# Work farming mode:
#     -F,--farm <url>  Put into mining farm mode with the work server at URL (default: http://127.0.0.1:8545)
#     --farm-recheck <n>  Leave n ms between checks for changed work (default: 500).
#     --no-precompute  Don't precompute the next epoch's DAG.
# Ethash verify mode:
#     -w,--check-pow <headerHash> <seedHash> <difficulty> <nonce>  Check PoW credentials for validity.
# Benchmarking mode:
#     -M,--benchmark  Benchmark for mining and exit; use with --cpu and --opencl.
#     --benchmark-warmup <seconds>  Set the duration of warmup for the benchmark tests (default: 3).
#     --benchmark-trial <seconds>  Set the duration for each trial for the benchmark tests (default: 3).
#     --benchmark-trials <n>  Set the duration of warmup for the benchmark tests (default: 5).
#     --phone-home <on/off>  When benchmarking, publish results (default: on)
# DAG creation mode:
#     -D,--create-dag <number>  Create the DAG in preparation for mining on given block and exit.
# Mining configuration:
#     -C,--cpu  When mining, use the CPU.
#     -G,--opencl  When mining use the GPU via OpenCL.
#     --opencl-platform <n>  When mining using -G/--opencl use OpenCL platform n (default: 0).
#     --opencl-device <n>  When mining using -G/--opencl use OpenCL device n (default: 0).
#     -t, --mining-threads <n> Limit number of CPU/GPU miners to n (default: use everything available on selected platform)
#     --allow-opencl-cpu Allows CPU to be considered as an OpenCL device if the OpenCL platform supports it.
#     --list-devices List the detected OpenCL devices and exit.
#     --current-block Let the miner know the current block number at configuration time. Will help determine DAG size and required GPU memory.
#     --cl-extragpu-mem Set the memory (in MB) you believe your GPU requires for stuff other than mining. Windows rendering e.t.c..
#     --cl-local-work Set the OpenCL local work size. Default is 64
#     --cl-global-work Set the OpenCL global work size as a multiple of the local work size. Default is 4096 * 64
#     --cl-ms-per-batch Set the OpenCL target milliseconds per batch (global workgroup size). Default is 0. If 0 is given then no autoadjustment of global work size will happen
# General Options:
#     -v,--verbosity <0 - 9>  Set the log verbosity from 0 to 9 (default: 8).
#     -V,--version  Show the version and exit.
#     -h,--help  Show this help message and exit.

ethminer \
    -F http://eth.pool.minergate.com:55751/"${EMAIL}" \
    -C \
    --disable-submit-hashrate \
    --verbosity 0
