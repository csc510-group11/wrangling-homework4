BEGIN { FS = ","; count = 0 }
{

    if (count < 6) {
        print $0
    }
    count++
}