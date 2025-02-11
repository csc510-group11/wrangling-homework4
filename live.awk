BEGIN{
    FS = ",";
    for(i=0;i<4;i++) survival[i] = 0
}
{
    if (NR>1)
    {
        survival[$3] += $2
    }
}
END {
    total_survived = 0
    for(i=1;i<4;i++) {
        printf("Class %d: %d survived\n",i,survival[i])
        total_survived += survival[i]
    }
    printf("\nTotal Passengers Survived: %d\n",total_survived) 
}