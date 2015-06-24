            //Programming Example 7.14
            //factorial of an integer using recursion
function[] = main()
    //read in the integer quantity
    printf("n = ");
    n=scanf("%d");
    //calculate and display the factorial
    printf("n! = %d\n", Factorial(n));
endfunction

function[f] = Factorial(n)
    if (n <= 1) then
        return (1);
    else
        f = n*factorial(n-1);
        return f;
    end
endfunction
//calling main()
main();