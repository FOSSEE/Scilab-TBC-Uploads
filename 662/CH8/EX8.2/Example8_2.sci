//Programming Example 8.2
// calculate the factorial of an integer quantity

funcprot(0)
function[] = mainfact()
    //read in the integer quantity
    printf("\nn=")
    n=scanf("%d")
    //calculate and display the factorial
    printf("\nn! = %d",Factorial(n))
endfunction

function[prod] = Factorial(n)        //calculate the factorial
    prod=1
    if n > 1 then
        for i = 2 : n
            prod = prod * i
        end
    end
    return(prod);
endfunction
// calling routine
mainfact()