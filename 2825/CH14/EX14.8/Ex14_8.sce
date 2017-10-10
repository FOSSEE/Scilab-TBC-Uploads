//Ex14_8 Pg-698
clc

n1=1.52 //core refracrive index
n2=1.46 //cladding refractive index

del=(n1-n2)/n1 //fractional difference of refractive indices

NA=n1*sqrt(2*del) //numerical apperture
printf("Numerical apperture = %.3f \n",NA)

AA_rad=asin(NA) //maximum Acceptance angle in rad
AA=AA_rad*180/%pi //maximum entrance angle in degree
printf(" Acceptance angle i0 = %.2f degree \n",AA)

tetha_rad=asin(n2/n1) //critical angle in radians
tetha=tetha_rad*180/%pi //critical angle in degree 
printf(" Critical angle = %.1f degree \n",tetha)