//Variable Declaration
n = 100    // total chargers
n1 = 10   // total selected chargers
r = 25     // total defective chargers
r1 = 2    // defective chargers to be selected out of 5
p = 0.25

//Calculation

function ans =  comb(n,r)
    // returns number of total combination of selecting "r" items out of "n" 
    ans = factorial(n)/(factorial(r)*factorial(n-r))
endfunction    


p1 = (comb(r,r1)*comb(n-r,n1-r1)) / (comb(n,n1))              
p2 = comb(n1,r1)*(p^r1)*((1-p)^(n1-r1))

//Results
printf ( "For Hypergeometric distribution: %.3f",p1)
printf ( "For Binomial distribution: %.3f",p2)
