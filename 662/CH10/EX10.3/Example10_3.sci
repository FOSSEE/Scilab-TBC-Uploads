        //Example 10.3
//Read a string from keyboard and display the same on screen

global MAX_SIZE;
MAX_SIZE = 50;

function[] = main()
    printf("Enter a string of maximum %d characters: ", MAX_SIZE);
    str=scanf("%s");
    printf("The entered string is %s\n", str);
endfunction

//Calling main()
funcprot(0);
main();