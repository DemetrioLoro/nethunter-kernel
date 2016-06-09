#!/bin/bash

rm -rf ./build.log
(
    START_TIME=`date +%s`

make clean
make kali_defconfig
make -j4

    END_TIME=`date +%s`
	
    let "ELAPSED_TIME=$END_TIME-$START_TIME"
    echo "Total compile time is $ELAPSED_TIME seconds"
) 2>&1	 | tee -a ./build.log

