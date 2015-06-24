//Programming Example 7.11
//Simulation of a game of chance (Shooting Craps)

funcprot(0);
SEED = 12345;

function[]=main()
    answer='Y'
    printf("\n\n               Welcome to the game of CRAPS:\n            ");
    printf("To throw dice, press RETURN\n\n");
    rand(SEED);        //initialize the random number generator
    
    //main loop
    answer=convstr(answer,'l');
    while (answer<>'N')
        play();                    //external function
        printf("\n Do you want to play again? (Y/N): ");
        answer=scanf("%c");
        printf("\n");
        answer=convstr(answer,'u');
    end
    printf("Bye, have a nice day");
endfunction

//Simulate one complete game

function[]= play()
    printf("\n Please throw thw dice");
    dummy=scanf("%c");
    printf("\n");
    score1=throw();            //function call
    printf("\n %2d", score1);
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
         else
             code();
         end
        return;
endfunction

    //Simulate  one throw of a pair of dice
function[n] = throw()
    x1 = rand(SEED);
    x2 = rand(SEED);
    n1 = 1 + int16(6* x1);
    n2 = 1 + int16(6* x2);
    n=n1+n2;
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

//calling routine
main();
