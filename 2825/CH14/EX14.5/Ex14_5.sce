//Ex14_5 Pg-696
clc

n1=1.5//core refracrive index
n2=1.48 //cladding refractive index
n=1

NA=sqrt(n1^2-n2^2) //numerical apperture
printf("(1) Numerical apperture = %.5f \n",NA)

AA_rad=asin(NA/n) //maximum Acceptance angle in rad
AA=AA_rad*180/%pi //maximum entrance angle in degree
printf(" (2) The maximum entrance angle i0 = %.2f degree",AA)

