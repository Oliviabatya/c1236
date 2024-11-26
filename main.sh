attempts=0
menu=false #menu not selected properly
continue="no"
echo

read -p "please enter password: " pwd #ask for password

if  [ $pwd == "App1" ]; then 
        continue="yes"
else
    while [ $attempts -lt 3 ]; do #if you get it wrong it runs 3 times 
        # incorrect password attempts warning
        if [ $attempts -eq 0 ] && [ $pwd != "App1" ]; then
            echo "incorrect password 2 more guesses till your locked out"
            read -p "please enter password: " pwd #ask for password
        elif [ $attempts -eq 1 ] && [ $pwd != "App1" ]; then
            echo "incorrect password 1 more guesses till your locked out"
            read -p "please enter password: " pwd #ask for password
        elif [ $attempts -eq 2 ] && [ $pwd != "App1" ]; then
            echo "incorrect password you've exhausted your attempts"
        fi
        ((attempts++))
    done

    if  [ $pwd == "App1" ]; then 
        continue="yes"
    fi
fi

while [ $continue == "yes" ]; do
    echo
    echo "Task 1: enter A or a"
    echo "Task 2: enter B or b"
    echo "Task 3: enter C or c"
    task=""
    menu=false
    while [ "$task" != "a" ] && [ "$task" != "A" ] && [ "$task" != "b" ] && [ "$task" != "B" ] && [ "$task" != "c" ] && [ "$task" != "C" ] && [ "$menu" = false ]; do
        
        read -p "what task do you wish to view? " task #task selection 
        
        if [ "$task" = "a" ] || [ "$task" = "A" ] ; then
            menu=true
            echo
            echo "Task 1 selected"
            echo
            ./task1.sh # go to task 1
        elif [ "$task" = "b" ] || [ "$task" = "B" ] ; then
            menu=true
            echo
            echo "Task 2 selected" 
            echo
            ./task2.sh # go to task 2
        elif [ "$task" = "c" ] || [ "$task" = "C" ] ; then
            menu=true
            echo
            echo "Task 3 selected"
            echo
            ./task3.sh # go to task 3
        else #invalid menu option warning
            echo "Incorrect option. Please enter a,A,b,B,c or C"
        fi
    done
    echo
    echo "Would you like to go to the menu or exit?"
    read -p "Enter'yes' to go back to menu, 'no' to exit: " continue # exits when no is entered, continues when yes is entered
done