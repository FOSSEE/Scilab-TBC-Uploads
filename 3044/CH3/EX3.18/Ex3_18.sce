//Variable Declaration
n = 52        // Total cards
m = 4         // Total aces in a deck
r = 2         // Cards to be drawn

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

p1 = ((comb(m,1))/comb(n,1)) * ((comb(m,1))/comb(n,1))   // Required probability for (a)
p2 = ((comb(m,1))/comb(n,1)) * ((comb(m-1,1))/comb(n-1,1))   // Required probability for (b)

//Results
printf ( "probability of two aces with replacement: %.3f or 1/169",p1)
printf ( "probability of two aces without replacement: %.3f or 1/221",p2)
