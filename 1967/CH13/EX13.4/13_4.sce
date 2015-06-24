clc
//initialisation of variables
clear
k1= -9130 //cal
k2= 7.46 //cal K^-1
k3= -3.69*10^-3 //K^-2
k4= 0.235*10^-6 //K^-3
k5= -12.07
T= 298 //K
R= 1.987 //cal deg^-1 mole^-1
//CALCULATIONS
dF= k1+k2*T*log(T)+k3*T^2+k4*T^3+k5*R*T
//RESULTS
printf ('Free energy = %.f cal',dF)
