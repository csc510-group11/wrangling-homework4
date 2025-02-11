task2() {
    echo "Lines containing the word $1 in the file $2:"
    grep "$1" "$2"

    echo "Lines not containing the word $1 in the file $2:"
    grep -v "$1" "$2"

    echo "Unique lines in the file $2:"
    sort "$2" | uniq # The uniq command only removes adjacent duplicate lines. 

    echo "Count the occurence of each word in the file $2:"
    sort "$2" | uniq -c

    echo "Count the occurence of the word $1 in the file $2:"
    grep "$1" "$2" | uniq -c
}

task2 'banana' 'sample.txt'