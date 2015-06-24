//Variable declaration
n1=300                                        // Total insulators
m1=294       				     // insulators having capacity of withstand shock

//Calculation

function ans = comb(n,r)
    ans = factorial(n)/(factorial(r)*factorial(n-r))
endfunction

prob = comb(m1,1)/comb(n1,1)          // Resultant probability

//Results
printf ( "Required probability : %.3f",prob)


// Note : Factorial function can handle only upto n = 170. Above that it returns %inf value. 
// So this problem can not be calculated.
