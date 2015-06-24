//Variable Declaration
alpha = 3
beta = 1.0/3

//Calculation
function ans = f1(x)
    ans = 3*(%e^(-3*x))
endfunction

result = intg(0, 1.0/12,f1)

function ans = f2(x)
    ans = 3*(%e^(-3*x))
endfunction

result1 = intg(3.0/4, 3,f2)   // probability for 0.5 < x < +inf

// Result
printf ( "probability(Part A): %.3f",result)
printf ( "probability(Part B): %.3f",result1)
