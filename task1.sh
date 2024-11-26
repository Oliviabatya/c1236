tri=0 #triangular number 
prodOdd=1 #sum of odd numbers
prodEven=1 #sum of even numbers
odd=0
even=0
oddString='Odd: '
evenString='Even: '

i=1 #variable for iterating through triangular numbers

read -p 'Enter minimum number: ' minvar #minimum input
read -p 'Enter maximum number: ' maxvar #maximum input
echo
echo "Range $minvar to $maxvar"
echo
echo "The tringular numbers are: "
#use [ square brackets ] for test conditions
#use ((parenthesis)) for math functions and if you put a $ infront u dont need to put it infront of each variable
while [ $tri -lt $maxvar ] ; do #while triangular number is less than max
  	
	tri=$((i*(i+1)/2))
	
	if [ $tri -ge $minvar ] && [ $tri -le $maxvar ]; then #if triangular number is greater than min and smaller than max
	
		if (( tri % 2 != 0)); then #if triangular number is odd
			echo "$tri: odd"
			prodOdd=$((prodOdd * tri))
			odd=$(($odd + 1))

		else #if triangular number is not odd (ie even)
			echo "$tri: even"
			prodEven=$((prodEven * tri))
			even=$((even + 1))

		fi #end of if statements about even & odd

	fi #end of if statement determining which triangular numbers to print
	((i++))	#add 1 to i with each iteration
done # end of while

echo
echo "The number of even triangular numbers are: $even"
echo "The number of odd triangular numbers are: $odd"
echo
echo "The product of odd triangular numbers are: $prodOdd" #print Odd and sum of odd numbers
echo "The product of even triangular numbers are: $prodEven" #print Even and sum of even numbers