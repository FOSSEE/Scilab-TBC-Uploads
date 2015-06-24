//Variable declaration
n=20    // Total Assistants
r=3     // Assistants to be chosen

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

ways=comb(20,3)   // total number of methods

//Results
printf ( "Total methods : %.f",ways)
