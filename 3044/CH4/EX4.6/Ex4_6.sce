//Variable Declaration
n = 20    // total chargers
n1 = 10   // total selected chargers
r = 5     // total defective chargers
r1 = 2    // defective chargers to be selected out of 5

//Calculation

function ans =  comb(n,r)
    // returns number of total combination of selecting "r" items out of "n" 
    ans = factorial(n)/(factorial(r)*factorial(n-r))
endfunction    

p = (comb(r,r1)*comb(n-r,n1-r1)) / (comb(n,n1))               // Required probability

//Results
printf ( "probability of exactly 2 defective out of 10: %.3f",p)
