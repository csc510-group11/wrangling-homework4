#!/usr/bin/env gawk -f
NR != 1 { FS = "," } { freqmap[$3] += $2 }
END {
    for (i in freqmap) {
        print i, freqmap[i]
    } 
}