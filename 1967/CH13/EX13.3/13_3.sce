clc
//initialisation of variables
clear
k= -8810 //cal
k1= -7.46 //cal K^-1
k2= 3.69*10^-3 //cal K^-2
k3= -0.47*10^-6 //cak K^-3
T= 298 //K
//CALCULAATIONS
dH= k+k1*T+k2*T^2+k3*T^3
//RESULTS
printf ('Standard heat of reaction = %.f cal',dH)
