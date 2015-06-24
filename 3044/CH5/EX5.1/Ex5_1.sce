
//Calculation

function ans = f(x)
    ans =  2*(%e^(-2*x))
endfunction

// between 1 and 3
result = intg(1, 3,f)         // probability for 1 < x < 3

function ans = fun(x)
    ans = 2*(%e^(-2*x))
endfunction
// greater than 0.5
result1 = intg(0.5,5,fun)   // probability for 0.5 < x < 5 i.e. inf doesn't work. 


// Result
printf ( "probability of x to lie between 1 and 3 is: %.3f",result)
printf ( "probability of x to be greater than 0.5 is: %.3f",result1)
