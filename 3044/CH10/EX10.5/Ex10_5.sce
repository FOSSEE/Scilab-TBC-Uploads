// Variable declaration
alpha = 0.05      // level of significance

// Calculation
chi_sq_thr = 5.991                      // theoritical value of chi square at alpha = 0.05 with v = 2
l = [ 41 27 22 ;  79 53 78 ]

crum = l(1,1:3)                         // list of crumbled
rem_int = l(2,1:3)                     // list of remained intact

e11 = sum(crum)*sum(l(1:2,1)) / (sum(crum)+sum(rem_int))
e12 = sum(crum)*sum(l(1:2,2)) / (sum(crum)+sum(rem_int))
e13 = sum(crum)*sum(l(1:2,3)) / (sum(crum)+sum(rem_int))
e21 = sum(rem_int)*sum(l(1:2,1)) / (sum(crum)+sum(rem_int))
e22 = sum(rem_int)*sum(l(1:2,2)) / (sum(crum)+sum(rem_int))
e23 = sum(rem_int)*sum(l(1:2,3)) / (sum(crum)+sum(rem_int))

q = [e11,e12,e13,e21,e22,e23]                            // list of expected frequency
p = [41,27,22,79,53,78]                                  // list of entries

chi_sq_prt = 0

for i = 1:6
    chi_sq_prt = chi_sq_prt + (p(i)-q(i))^2.0 / q(i)
end    


// Result
printf ( "Practical chi square value: %.3f",chi_sq_prt)
if(chi_sq_thr > chi_sq_prt) then
    printf ( "null hypothesis can not be rejected")
    printf ( "data dont refute to hypothesis")
else
    printf ( "null hypothesis must be rejected")
    printf ( "data refute to hypothesis")
end    
