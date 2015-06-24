// Variable declaration
n = 50   // Units
r = 10   // Failed units
v = 20   // Degrees of freedom

// Calculation

l = [65,110,380,420,505,580,650,840,910,950]

U = 1000/0.4
T_prt = sum(l)+(50-10)*950

X_sq_thr = 31.410         // chi-square theoritical at alpha = 0.05
T_thr = (0.5 * U * X_sq_thr)

// Result
printf ( "Practical T value : %.1f ",T_prt)
if(T_thr > T_prt) then
    printf ( "null hypothesis can not be rejected")
    printf ( "Failure rate is greater than 0.40 failure per thousand hours.")
else
    printf ( "null hypothesis must be rejected")
    printf ( "Failure rate is less than 0.40 failure per thousand hours.")
end    
