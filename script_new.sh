#! bin/bash


# for the speclibm

#change the size of of l1i

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1ichange/speclibm1 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1ichange/speclibm2 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000


./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1ichange/speclibm3 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=128kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

#change the size of l1d

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1dchange/speclibm1 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1dchange/speclibm2 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=32kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1dchange/speclibm3 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=32kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

#change the size of l2

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l2change/speclibm1 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l2change/speclibm2 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=1024kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l2change/speclibm3 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=2048kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l2change/speclibm4 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=2048kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l2change/speclibm5 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=4096kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

#change the l1i associativity

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1iassoc/speclibm1 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1iassoc/speclibm2 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=2 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1iassoc/speclibm3 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=4 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1iassoc/speclibm4 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=8 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

#change the l1d assoc

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1dassoc/speclibm1 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1dassoc/speclibm2 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=2 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1dassoc/speclibm3 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=4 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l1dassoc/speclibm4 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=8 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

#change the l2 assoc

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l2assoc/speclibm1 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=1 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l2assoc/speclibm2 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l2assoc/speclibm3 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=4 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/l2assoc/speclibm4 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=8 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

#change the cache line size 

./build/ARM/gem5.opt -d spec_results2_2/speclibm/cacheline/speclibm1 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/cacheline/speclibm2 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=128 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/cacheline/speclibm3 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=256kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/cacheline/speclibm4 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=256kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=512 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/cacheline/speclibm5 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=256kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=1024 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d spec_results2_2/speclibm/cacheline/speclibm6 configs/example/se.py --cpu-
type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=256kB --l2_size=512kB
--l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=2048 --cpu-clock=1GHz -c
spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1
spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000








