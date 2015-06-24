// Variable declaration
alpha = 0.05
n = 400
chi_sq_thr = 16.919   

// Calculation
q = [22.4,42.8,65.2,74.8,69.2,52.8,34.8,20.0,10.0,8.0]  // list of expected frequency
p = [18,47,76,68,74,46,39,15,9,8]            // list of entries

chi_sq_prt = 0

for i = 1:10
    chi_sq_prt = chi_sq_prt + (p(i)-q(i))^2/q(i)
end

// Result
printf ( "Practical chi square value: %.3f",chi_sq_prt)
if(chi_sq_thr > chi_sq_prt) then
    printf ( "null hypothesis can not be rejected")
    printf ( "Poisson distribution provides a good fit at level alphha=0.05")
else
    printf ( "null hypothesis must be rejected")
    printf ( "Poisson distribution does not provide a good fit at level alphha=0.05")
end

