// Variable declaration
alpha = 0.05      // level of significance
v = 14            // degree of freedom
std_dev = 0.64    // standard deviation(in mil)
sigma = 0.5

// Calculation
// null hypothesis: if sigma = 0.5 , Alternative hypothesis if sigma > 0.5

chi_sq_thr = 23.685                                      // theoritical value of chi square at alpha = 0.05 with v = 14
chi_sq_prt = ( v*(std_dev^2) ) /(sigma^2)          // calculated value of chi square

// Result
if(chi_sq_thr > chi_sq_prt) then
    printf ( "null hypothesis can not be rejected")
    printf ( "we can not conclude that lapping process is unsatisfatory")
else
    printf ( "null hypothesis can be rejected")
    printf ( "we can conclude that lapping process is unsatisfatory")
end
