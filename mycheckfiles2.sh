#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo
echo "#==========================================================="
echo "Start Times"

rplpl_file=$(ls -t rplpl-slurm.*.out 2>/dev/null | head -n1)
rplspl_file=$(ls -t rplspl-slurm.*.out 2>/dev/null | head -n1)

if [ -n "$rplpl_file" ]; then
    echo "==> $rplpl_file <=="
    grep -m1 "time.struct_time" "$rplpl_file"
fi

if [ -n "$rplspl_file" ]; then
    echo "==> $rplspl_file <=="
    grep -m1 "time.struct_time" "$rplspl_file"
fi

echo "End Times"

if [ -n "$rplpl_file" ]; then
    echo "==> $rplpl_file <=="
    tail -n 5 "$rplpl_file"
fi

if [ -n "$rplspl_file" ]; then
    echo "==> $rplspl_file <=="
    tail -n 5 "$rplspl_file"
fi

echo "#==========================================================="

