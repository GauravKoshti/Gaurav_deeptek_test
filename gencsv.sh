for (( i=0; i <= 10000; i++ )); do
    read -e input
    echo $i,$input  >> inputFile
done
