clc
//initialisation of variables
clear
k1= 4600
k2= -8.64
k3= 1.86*10^-3
k4= -0.12*10^-6
k5= 12.07
T= 600 //K
//CALCULATIONS
Kf= %e^(k1*(1/T)+k2*log10(T)+k3*T+k4*T^2+k5)
//RESULTS
printf ('Kf = %.3f ',Kf)
