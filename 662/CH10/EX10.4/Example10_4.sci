            //Example 10.4
//Read a line of text from keyboard and display the same on screen
global MAX_SIZE;
MAX_SIZE = 50;

function[] = main()
    printf("Enter a line of text of maximum %d characters: ", MAX_SIZE);
    str = read(%io(1), 1, 1, '(a)');
    printf("The entered line is:\n");
    write(%io(2),str);
endfunction

//Calling main()
funcprot(0);
main();