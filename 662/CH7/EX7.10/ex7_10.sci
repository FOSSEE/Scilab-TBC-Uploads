            //Programming Example 7.10
            clc
//Calculating Factorials
function[] = main()
    //read in the integer quantity
        printf("\nEnter integer value to find factorial of");
    printf("\nn = ");
    n = scanf("%d");
    //Calculate and display the factorial
    printf("\n n! = %d", Factorial(n));
endfunction

function[prod] =Factorial(n)
    //calculate the factorial of n
        prod = 1;
        if n > 1 then
            for i = 2: 1: n
                prod=prod*i;
            end
        end
        return prod
endfunction

//calling routine
main();
