#!/usr/bin/awk -f

BEGIN { 
    FS=","  # Set field separator to comma (CSV format)
}

NR > 1 { 
    class[$3]++  # Pclass is in the third column ($3)
}

END { 
    for (c in class) 
        print "Class " c ": " class[c] " passengers"
}