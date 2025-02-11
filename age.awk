#!/usr/bin/env gawk -f
BEGIN { sum = 0; total =0 }
NR != 1 { FS = "," } { sum += $7; total += 1 }
END { print "Average", sum/(total-1) }
