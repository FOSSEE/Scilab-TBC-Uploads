//Variable Declaration
n = 5            // total number of installations 
p = 0.6          // probability of heat installations reduced by one-third

//Calculation

function ans =  comb(n,r)
    // returns number of total combination of selecting "r" items out of "n" 
    ans = factorial(n)/(factorial(r)*factorial(n-r))
endfunction    
p1 = comb(5,4) * (p^4) * ((1-p)^1)                                                // probability of exactly four out of five
p2 = (comb(5,4) * (p^4) * ((1-p)^1)) + (comb(5,5) * (p^5) * ((1-p)^0))          // probability of atleast four out of five

//Results
printf ( "probability of reduction of utility bill in exactly 4 out of 5: %.3f",p1)
printf ( "probability of reduction of utility bill in atleast 4 out of 5: %.3f",p2)
