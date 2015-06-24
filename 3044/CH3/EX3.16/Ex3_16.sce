//Variable Declaration
n=20     // Total workers
m=8      // favourable condition
r=2      // workers to be selected

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

P = (comb(8,2))/comb(20,2)         // Required probability=Favourable cases/Total cases

//Results
printf ( "required probability is: %.3f or 14/95",P)
