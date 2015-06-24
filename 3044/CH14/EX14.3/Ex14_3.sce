// Variable declaration
alpha = 0.01                          // level of significance
n1 = 15
n2 = 14
l = [45,73,46,124,33,57,83,34,26,17 ; 36,60,44,119,35,51,77,29,24,11]

// Calculation
// null hypothesis: populations are identical else alternative hypothesis
// x: number of Plus signs with respect to 0
// sample size = 10

z_thr = 2.575

W1 = 162
U1 = W1 - (n1*(n1+1))/2

MU1 = n1*n2/2

sigma_sq_U1 = n1*n2*(n1+n2+1)/12
sigma_U1 = sqrt(sigma_sq_U1)

z_prt = (U1 - MU1)/sigma_U1

// Result
printf ( "practical z: %.2f",z_prt)
if(z_prt<-2.575) then
    printf ( "null hypothesis rejected, i.e. Difference in population of grain size")
else
    printf ( "null hypothesis can not be rejected, i.e. No Difference in population of grain size")
end

