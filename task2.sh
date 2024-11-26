read -p 'Enter the intial number: ' startNum
read -p 'How many products do you want to print?: ' numProd #num of iterations
read -p 'Enter a number to check if it is a factor of the products: ' factor
echo

prod=0

echo "The products are: " 
echo
for (( i = 1; i <= $numProd; i++ )) ; do
    
    prod=$((startNum*(startNum + 1)))
    ((startNum++))
    
    if (( $prod % factor == 0 )); then
        echo "$prod: is a factor of $factor"
    else
        echo "$prod: not a factor of $factor"
    fi
done