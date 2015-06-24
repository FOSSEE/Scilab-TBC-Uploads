//Variable Declaration
p = 0.05          // probability of failure due to load
n = 16            // total columns

//Calculation

function ans =  comb(n,r)
    // returns number of total combination of selecting "r" items out of "n" 
    ans = factorial(n)/(factorial(r)*factorial(n-r))
endfunction    

p1 = comb(16,0)*(p^0)*((1-p)^16) + comb(16,1)*(p^1)*((1-p)^15) + comb(16,2)*(p^2)*((1-p)^14)   // probability of failure of at most 2
p2 = comb(16,0)*(p^0)*((1-p)^16) + comb(16,1)*(p^1)*((1-p)^15) + comb(16,2)*(p^2)*((1-p)^14) + comb(16,3)*(p^3)*((1-p)^13)     // probability of at most 3
p2 = 1-p2                   // probability of failures of at least 4

//Results
printf ( "probability of failure of at most 2 out of 16 columns: %.3f",p1)
printf ( "probability of failure of at least 4 out of 16 columns: %.3f",p2)
