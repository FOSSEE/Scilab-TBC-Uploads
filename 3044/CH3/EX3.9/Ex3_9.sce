//Variable declaration
n=52                                  // Total number of cards
m=4                                   // Total number of ace

//Calculation

function ans =  fact(n)
    // returns factorial of number n"""
    if(n==1 | n==0) then
        ans = 1
    else:
        ans = n*fact(n-1)
    end
endfunction
    
function ans = comb(n,r)
    ans = fact(n)/(fact(r)*fact(n-r))
endfunction


prob = (comb(m,1))/comb(n,1)     // Required probability

//Results
printf ( "Required probability : %.3f or 1/13",prob)
