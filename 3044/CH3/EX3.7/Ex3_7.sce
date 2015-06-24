//Variable declaration
n = 15    // Total machines
r = 3   

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
ways=comb(n,r)   // total number of methods

//Results
printf ( "Total methods : %.f ",ways)
