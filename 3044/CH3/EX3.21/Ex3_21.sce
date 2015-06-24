//Variable Declaration
n = 6        // Total possible outcomes after one roll
m = 5        // favourable outcomes of not getting 6 for each roll

//Calculation
function ans = fact(n)
    // returns factorial of number n"""
    if(n==1 | n==0) then
        ans = 1
    else
        ans = n*fact(n-1)
    end
endfunction
    
function ans = comb(n,r)
    // returns number of total combination of selecting "r" items out of "n" """
    ans = fact(n)/(fact(r)*fact(n-r))
endfunction

P = (comb(5,1))/comb(6,1)     // probability of not getting 6 in one roll
P = P^4                           // required probability

//Results
printf ( "Required probability: %.3f or 625/1296",P)
