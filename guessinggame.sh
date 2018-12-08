function guess() {
  total_files=$(ls | wc -l);

  while true;
  do
    echo "Guess Total Files:"
    read response
    
    if [[ $response -eq $total_files ]]
    then
       echo "Congratulations mate ... You're Correct !!!"
       break;
    elif [[ $response -lt $total_files ]] 
    then
      echo "Entered value is less than the actual value"

    elif [[ $response -gt $total_files ]]
    then
      echo "Entered value is greater than the actual value"

    else
      echo "Invalid Value"
    fi
  done 
}

echo "Total number of files in the directory:"
guess

 

