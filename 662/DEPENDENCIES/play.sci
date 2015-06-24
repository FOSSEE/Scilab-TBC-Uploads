//Programming Example 8.9
        //Second File
        
       //Simulate one complete game

function[]= play()
    printf("\n Please throw thw dice");
    dummy=scanf("%c");
    printf("\n");
    score1=throw();            //function call
    printf("\n score1 =%2d", score1);
    select(score1)
    
        //win on first throw
        case 7
            printf("\n Congratulations! you WIN on the first throw\n");    
        case 11
            printf(" \nCongratulations! you WIN on the first throw\n");
       
        //lose on first throw
        case 2
            printf("\nSorry, you LOSE on the first throw\n ");        
        case 3
            printf("\nSorry, you LOSE on the first throw\n ");
        case 12
            printf("\nSorry, you LOSE on the first throw\n ");
       
        //additional throws are required
        case 4
            code();
        case 5
            code();
        case 6
             code();
        case 7
            code();
        case 8
             code();
        case 9
            code();
        case 10
           code();
         end
        return;
endfunction


    //Simulate  one throw of a pair of dice
function[n] = throw()
    x1 = rand();
    x2 = rand();
    disp(x1);
    disp(x2);
    n1 = 1 + int16(6* x1);
    n2 = 1 + int16(6* x2);
    n= n1+n2;
    printf("\n\n n= %d\n\n", n);
    return n;
endfunction

//code for the cases requiring additional  throws
// as in scilab we need to write code for each case seperately
//so as not to repeat the same code again and again.
function[] = code()
    first="true";
            score2=throw();
            while((score2<> score1 & score2<>7) | first=="true")
                first="false";
                printf("\n Throw the dice again..");
                dummy=scanf("%c");
                score2=throw();
                printf("\n%2d", score2);
            end
            if(score2 == score1) then
                printf("     You WIN by matching your first score\n")
            else
                printf("      You LOSE by failing to match your first score\n");
            end
endfunction