//Variable Declaration
p = 0.1         // probability for repairing
n = 20          // total hard drives
p1 = 0

//Calculation

function ans =  comb(n,r)
    // returns number of total combination of selecting "r" items out of "n" 
    ans = factorial(n)/(factorial(r)*factorial(n-r))
endfunction    

for i = 0:4
    p1 = p1 + comb(20,i)*(p^i)*((1-p)^(n-i))
end
    
p1 = 1 - p1

//Results
printf ( "As the probability( %.4f ) is very less, so reject the claim.",p1)
