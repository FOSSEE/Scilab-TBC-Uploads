            //Example 7.12
//function that alters the value of its argument
function[] = main()
    a=2;
    printf("\na = %d (from main, before calling the function)", a);
    modify(a);
    printf("\n\na = %d (from main, after calling the function)", a);
endfunction

function[] = modify(a)
    a=a*3;
    printf("\n\na = %d(from the function, after being modified)", a);
    return;
endfunction

//calling main() first
funcprot(0);
main();
