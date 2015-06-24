//Variable declaration
n = 5    // Total chips
r = 5   // Total positions

//Calculation
function ans = fact(n)
    // returns factorial of number n"""
    if(n==1 | n==0) then
        ans = 1
    else
        ans = n*fact(n-1)
    end
endfunction    

function ans = perm(n,r)
    ans = fact(n)/(fact(n-r))
endfunction

ways=perm(5,5)   // total number of methods

//Results
printf ( "Total methods : %.f",ways)
