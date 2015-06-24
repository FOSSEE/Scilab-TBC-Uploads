// Calculation
// x<=1
function ans = f1(x)
    ans = 0
endfunction

function ans = f2(x)
    ans =  2*(%e^(-2*x))
endfunction


result = intg(0,-2,f1) + intg(0,1,f2)       // probability for -inf < x <= 1

// Result
printf ( "probability of x less than or equal to 1 is: %.3f",result(1))
