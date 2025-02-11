function age_sum(age_arr,   i,sum)
{
    sum = 0
    for (i in age_arr) sum += age_arr[i];
    return sum;
}

function age_mean(age_sum,total,   i,mean)
{
    mean = age_sum / total;
    return mean;
}


BEGIN {
    FS=",";
    total = 0;
    age = 0;
    }
{
    if (NR > 1)
    {
        age += $7
        age_arr[total] = $7
        total++
    }    
}
END {
    printf("Calculate the average age w/o using functions:\n")
    avg_age = age / total
    printf("Sum of ages:\t\t %d\nTotal Passengers:\t %d\nAverage of age:\t\t %.2f\n",age, total, avg_age)

    # Calculate the average age using functions
    printf("Calculate the average age using functions:\n")
    sum = age_sum(age_arr)
    mean = age_mean(sum, total)
    printf("Sum of ages:\t\t %d\n", sum)
    printf("Total Passengers:\t %d\n", total)
    printf("Mean of ages:\t\t %.3f\n", mean)
}