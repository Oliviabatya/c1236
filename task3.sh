total=0
count=1
startTotal=0
endTotal=0

echo "For the term: a(n^3) + b(n) + c"
echo
read -p 'Enter the value of "a": ' a
read -p 'Enter the value of "b": ' b
read -p 'Enter the value of "c": ' c
echo
read -p 'Enter the minimum range of "n": ' min
read -p 'Enter the maximum range of "n": ' max
echo
read -p 'Enter a number to check if it is a factor of the product: ' factor
echo; echo
echo "The sequence of terms in the range $min to $max are: "

for (( i = $min; i <= $max; i++ )); do
    
    total=$(( a*(i**3) + (b*i) + c ))
    printf "$total, "
   
    if (( i == $min )); then
        startTotal=$total
    elif (( i == $max )); then
        endTotal=$total
    fi
done

echo; echo
prod=$(( startTotal * endTotal ))

echo "The product of the first and last term is: " $prod
echo

if (( $prod % factor == 0 )); then
    echo "$prod: is a factor of $factor"
else
    echo "$prod: is not a factor of $factor"
fi