#!/bin/sh
columns=$(tput cols)
rows=$(tput lines)

h_columns=$((columns/2-6))
h_rows=$((rows/2-3))

tput civis

clear
num=20


while ((num>=0))
  do
  	 randnumrows=$((rows/4-RANDOM%((rows/2))))
  	 randnumcols=$((columns/4-RANDOM%((columns/2)))) 
     i=1
     j=1
     while ((i<$((h_rows+randnumrows))))
        do printf "\n"
           let i++
     done
     while ((j<$((h_columns+randnumcols))))
        do printf " "
           let j++
     done
     
     printf " /^\___/^\ \n"
     j=1
     while ((j<$((h_columns+randnumcols))))
        do printf " "
           let j++
     done
     
     printf "/         \ \n"
     
     j=1
     while ((j<$((h_columns+randnumcols))))
        do printf " "
           let j++
     done
     printf "| @    @  | \n"
     
     j=1
     while ((j<$((h_columns+randnumcols))))
        do printf " "
           let j++
     done
     printf "|         | \n"
     j=1
     while ((j<$((h_columns+randnumcols))))
        do printf " "
           let j++
     done
     printf "\   ^     / \n"
     j=1
     while ((j<$((h_columns+randnumcols))))
        do printf " "
           let j++
     done
     printf " \_______/ \n"
   
   let num--

   sleep 0.5
   clear
   sleep 0.1
  done



sleep 0.5

tput cnorm
#echo "\033[44;37;5m LOVE \033[0m"
#sleep 0.5

#j=0;
#while((j<columns))
#   do printf "\033[44;37;5m*\033[0m"
#      let j++
#      sleep 0.1
#done

