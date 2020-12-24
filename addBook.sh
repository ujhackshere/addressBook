#/bin/bash -c #!/bin/bash
action ()
{
        Clear
        current_date=$(date)
        echo Welcome to Address Book ! Todays date is : $current_date
        echo
        # sleep 1
        echo Select a choice
        echo 
        echo 1. Search for a record
        echo 2. Add a new record
        echo 3. Exit
        read user_choice 
        echo You chose $user_choice
        Sleep 1
        echo

        file_path=/Users/ujain/learn2code/phonedirectory.txt 
        echo
        # echo $file_path
        echo

        if (($user_choice == 3));
            then 
                echo You chose to exit
                Sleep 2
                Clear
        elif (($user_choice == 1));
            then 
                echo Enter [first name] of the person to search
                read search_name
                echo "Searching for:" $search_name
                sleep 2
                match_count=`grep -i -c $search_name $file_path`
                echo "Number of Rows matching the name:$match_count"
                if (($match_count == 0)) ;
                    then 
                        echo No Record Found
                        sleep 2
                    else 
                        grep -i $search_name $file_path
                    echo 
                    sleep 2
                fi
            else
                echo Enter [First Name] Please    
                read user_name
                echo Enter 10 digit phone number  
                read phone_number
                echo 
                echo thanks..working on it
                echo 
                echo $user_name $phone_number>>$file_path
                echo file updated. printing
                echo 
                sleep 1
                cat $file_path
                echo 
                sleep 2
        fi 

    echo Do you want to play more? [y/n]
    read user_interested

}  
action
    if [[ $user_interested == "y" ]];
        then action 
      
    fi
        

echo End of Game.
Sleep 2
clear