//Ex14_4 Pg-696
clc

NA=0.5 //numerical apperture
n1=1.54 //core refractive index

n2=sqrt(n1^2-NA^2) //cladding refractive index
printf("(1) Cladding refractive index = %.3f \n",n2)

RI=(n1-n2)/n1 //change in core cladding refractive index
printf(" (2) RI of the core = %.4f",RI)
