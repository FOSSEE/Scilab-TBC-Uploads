//Variable Declaration
alpha = 3
beta = 2

//Calculation
Mean = 3/(3+2)
x1 = gamma(3+2)
x2 = gamma(3)
x3 = gamma(2)

function ans = f1(x)
    ans = (x1/(x2*x3))*((x^(2.0))*((1-x)^(1.0)))
endfunction

result = intg(0, 0.5,f1)

// Result
printf ( "Part(A): %.2f",Mean)
printf ( "Part(B): %.3f",result) // i.e. 5/16
