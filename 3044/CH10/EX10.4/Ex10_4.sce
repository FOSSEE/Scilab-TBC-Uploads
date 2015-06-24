// Variable declaration
alpha = 0.05      // level of significance
x = 48
n = 60
p0 = 0.70

// Calculation
// null hypothesis: if p=0.70 , Alternative hypothesis if p>0.70
Z_thr = 1.645                   // theoritical value of Z

Z_prt = (x - n*p0)/ sqrt(n*p0*(1-p0))        // practical value of Z

// Result
printf ( "Practical Z value: %.3f",Z_prt)
if(Z_thr > Z_prt) then
    printf ( "null hypothesis can not be rejected")
    printf ( "Proportion of good transceivers is not greater than 0.70")
else
    printf ( "null hypothesis must be rejected")
    printf ( "Proportion of good transceivers is greater than 0.70")
end
