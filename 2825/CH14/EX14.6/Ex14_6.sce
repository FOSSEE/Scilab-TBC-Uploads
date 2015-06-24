//Ex14_6 Pg-697
clc

n2=1.59 //cladding refractive index
NA=0.2 //numerical apperture
n0=1 //when fiber is in air

n1=sqrt(n2^2+NA^2) //core refractive index
printf("Core refractive index = %.3f \n",n1)

n0=1.33 //water refractive index
NA=sqrt(n1^2-n2^2)/n0 //numerical apperture
printf(" Numerical apperture = %.2f \n",NA)

AA_rad=asin(NA/n) //maximum Acceptance angle in rad
AA=AA_rad*180/%pi //maximum entrance angle in degree
printf(" The maximum entrance angle i0 = %.2f degree",AA)
