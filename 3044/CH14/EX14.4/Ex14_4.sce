// Variable declaration
alpha = 0.05                           // level of significance

// Calculation
// null hypothesis: if populations are identical, else : Alternative hypothesis

chi_sq_thr = 5.991                     // theoritical value of chi square at alpha = 0.05 with v = 2

a = [6,13,14,16,17,18]
b = [1,4.5,8,9,10,11,12]
c = [2,3,4.5,7,15]

// we know chi square calculated value
chi_sq_prt = (12.0/(18*19)) * (((sum(a))^2)/6 + ((sum(b))^2)/7 + ((sum(c))^2)/5) - 3*19 

// Result
printf ( "practical chi square: %.1f",chi_sq_prt)
if(chi_sq_prt > chi_sq_thr) then
    printf ( "null hypothesis must be rejected,three methods against corrosion are not equally effective")
else
    printf ( "null hypothesis can not be rejected,three methods against corrosion are equally effective")
end
