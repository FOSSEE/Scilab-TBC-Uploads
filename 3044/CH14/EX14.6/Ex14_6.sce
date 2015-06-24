// Variable declaration
alpha = 0.01                          // level of significance
n1 = 10
n2 = 17
U = 6

// Calculation
z_thr = 2.575

MU = (2*n1*n2)/(n1+n2) + 1

SigmaU = sqrt(((2*n1*n2)*(2*n1*n2-n1-n2)) / (((n1+n2)^2)*(n1+n2-1)))

z_prt = (U - MU)/SigmaU

// Result
printf ( "practical Z: %.2f" ,z_prt)
if(z_prt < -2.575) then
    printf ( "null hypothesis must be rejected, Arrangement is not random")
else
    printf ( "null hypothesis can not be rejected,Arrangement is random")
end
