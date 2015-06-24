//Variable Declaration
p = 0.3         // probability of not passing inspection
n = 18          // total panels

//Calculation


function ans =  comb(n,r)
    // returns number of total combination of selecting "r" items out of "n" 
    ans = factorial(n)/(factorial(r)*factorial(n-r))
endfunction    

p1 = comb(18,6)*(p^6)*((1-p)^12)

//Results
printf ( "Required probability: %.4f",p1)
