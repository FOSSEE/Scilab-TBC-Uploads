//Ex14_7 Pg-697
clc

NA=0.22 //numerical apperture
del=0.012 //fractional difference of refractive indices

n1=NA/(sqrt(2*del)) //core refractive index
printf("Core refractive index = %.2f \n",n1)

n2=n1-del*n1 //cladding refractive index
printf(" Cladding refractive index = %.2f \n",n2)


