#!/bin/bash

COMPILED_TIMES=results_compiled.log
SOURCE_TIMES=results_source.log
ATTEMPTS=${ATTEMPTS:-200}

# Gather data
for i in $(seq 1 1 ${ATTEMPTS});
do
  /usr/bin/time ./main &>> ${COMPILED_TIMES} 
  /usr/bin/time ./main 1 &>> ${SOURCE_TIMES}
done

# Post process
COMPILED_TIME=$(cat ${COMPILED_TIMES} | grep 'elapsed' | 's/elapsed//' -e 's/0://' | awk '{sum += $3; n++} END { if (n > 0) print sum / n}')
SOURCE_TIME=$(cat ${SOURCE_TIMES} | grep 'elapsed' | 's/elapsed//' -e 's/0://' | awk '{sum += $3; n++} END { if (n > 0) print sum / n}')

echo "Binary: ${COMPILED_TIME}"
echo "Source: ${SOURCE_TIME}"
