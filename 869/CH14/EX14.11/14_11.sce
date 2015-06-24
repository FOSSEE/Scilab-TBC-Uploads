clc
//initialisation of variables
d= 4 //in
n= 315 //rpm
Ss= 8000 //psi
Ns= 12000 //psi
//CALCULATIONS
T= Ss*%pi*d^4/(32*(d/2))
hp= T*n/63000
//RESULTS
printf ('T= %.1f lb in',T)
printf (' \n horsepower rating=%.1f hp',hp)
