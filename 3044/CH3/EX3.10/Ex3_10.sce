//Variable declaration
n1 = 10    // Total machines
n2 = 8     // Working Machines
r = 2      // To be selected

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

p1 = comb(n2,r)/(comb(n1,r))   
p2 = comb(n2,1)*comb(n1-n2,1)/(comb(n1,r))

//Results
printf ( "Probability: Both motors works : %.3f",p1)
printf ( "Probability: Exactly one works : %.3f",p2)
