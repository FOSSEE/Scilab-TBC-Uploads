// Variable declaration
n1 = 200             // sample-1 size
n2 = 400             // sample-2 size
x1 = 16
x2 = 14
alpha = 0.01         // level of significance

Z_thr = 2.33             // Z value

// Calculation
p = (x1+x2)/(n1+n2)
Z_prt = (x1/(n1) - x2/(n2)) / (sqrt( (p*(1-p))*(1.0/n1 + 1.0/n2)))        // Lower limit


// Result
printf ( "Practical Z value: %.2f",Z_prt)
if(Z_thr > Z_prt) then
    printf ( "null hypothesis can not be rejected")
    printf ( "Proportion of tractors is greater for first.")
else
    printf ( "null hypothesis must be rejected")
    printf ( "Proportion of tractors is greater for first.")
end
