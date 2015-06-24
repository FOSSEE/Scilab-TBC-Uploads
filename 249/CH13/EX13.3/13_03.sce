clear
clc
//Bed voidage
v=0.4;
//Superficial velocity of fluid(cm/s)
u=1.2;
l=90;//length(cm)
//Variance(sec^2) of output signals
sigma1_sqr=39;sigma2_sqr=64;
dsigma_sqr=sigma2_sqr-sigma1_sqr;
//In dimensionless form
t=l*v/u;
sigmatheta_sqr=dsigma_sqr/t^2;
//Dispersion number
d=sigmatheta_sqr/2;
printf("\n The vessel dispersion number is %f",d)