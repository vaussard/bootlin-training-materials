#!/bin/bash

set -euo pipefail

# build
for i in {1..10}; do
	FILE="full-linux-kernel-fvd-part$i-slides.pdf"

	echo ""
	echo "*** Building $FILE ***"
	echo ""

	make $FILE
done

# rename
mv full-linux-kernel-fvd-part1-slides.pdf 03-DRV_linux_kernel_intro.pdf
mv full-linux-kernel-fvd-part2-slides.pdf 04-DRV_kernel_module_intro.pdf
mv full-linux-kernel-fvd-part3-slides.pdf 05-DRV_kernel_frameworks.pdf
mv full-linux-kernel-fvd-part5-slides.pdf 06-DRV_memory.pdf
mv full-linux-kernel-fvd-part6-slides.pdf 07-DRV_process_interrupt.pdf
mv full-linux-kernel-fvd-part7-slides.pdf 08-DRV_locking.pdf
mv full-linux-kernel-fvd-part8-slides.pdf 09-DRV_debug.pdf
mv full-linux-kernel-fvd-part4-slides.pdf 10-DRV_pinmux.pdf
mv full-linux-kernel-fvd-part9-slides.pdf 11-DRV_power_management.pdf
mv full-linux-kernel-fvd-part10-slides.pdf 13-DRV_DMA.pdf

echo ""
echo "*** DONE ! ***"
echo ""
