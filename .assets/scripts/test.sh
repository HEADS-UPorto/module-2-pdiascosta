echo "Running tests..."
echo

declare output=($(Rscript --vanilla assignment.R))
r=$?
expected_output=( "numeric" "double" )

# if [ $r -eq 0 ] ; then
#   echo "Pass: Program exited zero"
# else
#   echo "Fail: Program did not exit zero"
#   exit 1
# fi

if [[ "${output[0]}" == *"${expected_output[0]}"* ]]; then
  echo "Pass: Output1 is correct"
else
  echo -e "Expected '${expected_output[0]}' but got: ${output[0]}"
  exit 1
fi

if [[ "${output[1]}" == *"${expected_output[1]}"* ]]; then
  echo "Pass: Output2 is correct"
else
  echo -e "Expected '${expected_output[1]}' but got: ${output[1]}"
  exit 1
fi

echo
echo "All tests passed."

exit 0
