//Variable declaration
n_chem=7    // Total chemists
r_chem=2    // chemists to be selected
n_phy=9     // Total physicists
r_phy=3     // physicists to be selected

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


ways=comb(n_chem,r_chem) * comb(n_phy,r_phy)   // total number of methods

//Results
printf ( "Total methods : %.f",ways)
