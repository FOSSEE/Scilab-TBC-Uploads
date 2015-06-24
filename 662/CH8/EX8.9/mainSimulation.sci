//Programming Example 8.9
//Simulation of a craps game
        //First File
funcprot(0);
global SEED;
SEED = 12345;
global x1;
x1=1;
global x2;
x2=1;

function[]=mainSimulation()
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

        //calling routine
//getting and executing path of called file
o=get_absolute_file_path('mainsimulation.sci');        
o=o+"play.sci";
exec (o);
mainSimulation();
