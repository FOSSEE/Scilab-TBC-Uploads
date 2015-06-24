// Variable declaration
v = 11            // degree of freedom
s1 = 0.035        // company-1 work yield
s2 = 0.062        // company-2 work yield
alpha = 0.05      // level of significance

// Calculation
// null hypothesis: if square(sigma1) = square(sigma2) , Alternative hypothesis if square(sigma1) < square(sigma2)

f_thr = 2.82                                   // theoritical value of F at alpha = 0.05 with v = 11
f_prt = (s2^2) / (s1^2)                // calculated value of F

// Result
if(f_thr > f_prt) then
    printf ( "null hypothesis can not be rejected")
    printf ( "data does not support contention")
else 
    printf ( "null hypothesis must be rejected")
    printf ( "data supports contention")
end
