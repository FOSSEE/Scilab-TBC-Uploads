//Ex14_10 Pg-698
clc

n1=1.48 //core refracrive index
n2=1.47 //cladding refractive index
lamda=850e-6 //cut-off wavelength
V=2.405 //normalised frequency
//In the book cut off wavelength in the question is 850 um but in
// the calcution part it is taken as 850nm. Here I've taken 850um 
d=V*lamda/(%pi*sqrt(n1^2-n2^2)) //diamter of core
a=d/2 //radius of core
printf("Radius of core = %.2f mm \n",a*1e3)//answer in the book is wrong

NA=sqrt(n1^2-n2^2) //numerical apperture
printf(" Numerical apperture = %.4f \n",NA)

AA_rad=asin(NA) //maximum Acceptance angle in rad
AA=AA_rad*180/%pi //maximum entrance angle in degree
printf(" Acceptance angle i0 = %.2f degree \n",AA)