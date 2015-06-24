            //Example 7.8
//convert a lowercase character to uppercase using a programmer defined function
funcprot(0);

function[c2] = lower_to_upper (c1)                //function definition
//as conditional (?:) operater is not present in scilab, so we need to use if-else instead.
    if (ascii(c1) >= ascii('a')) &(ascii(c1) <= ascii('z')) then
        c2=ascii(ascii('A')+ascii(c1)- ascii('a'));
    else
        c2=c1;
    end
    return c2;
endfunction

function[] = main()
    printf("Please enter a lowercase character: ");
    lower= scanf("%c");
    upper= lower_to_upper (lower);                       //function call
    printf("\n The uppercase equivalent is %c\n\n",upper);
endfunction

//calling main function.
main();