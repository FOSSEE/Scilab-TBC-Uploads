//Variable Declaration

//Calculation
function ans = f1(x)
    ans =  x*2*(%e^(-2*x))
endfunction

function ans = f2(x)
    ans =   ((x-result)^2)*2*(%e^(-2*x))
endfunction

// between 1 and 3
result = intg(0,2,f1)         // probability for 1 < x < 3

// greater than 0.5
result1 = intg(0,4, f2)   // probability for 0.5 < x < +inf

// Result
printf ( "Mean: %.1f",result)
printf ( "Variance: %.2f",result1)
