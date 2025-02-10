BEGIN {FS = ","; for(i=1; i<4; i++) class[i] = 0}{
    
    class[$3]++

}
END{
    total = 0;
    for(i=1; i<4; i++)
    {
        total += class[i]
        printf ("Class %d: %d passengers\n", i, class[i])
    }
    printf ("Total passengers: %d\n", total)
}