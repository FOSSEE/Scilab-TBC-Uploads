clc
//initialisation of variables
clear
k1= 6.2
k2= 1.33*10^-3
k3= 6.78*10^4
T1= 800 //C
T2= 300 //C
//CALCULATIONS
dS= k1*log(T1/T2)+k2*(T1-T2)-0.5*k3*(T1^-2-T2^-2)
//RESULTS
printf ('Entropy increase = %.2f cal deg^-1 g atom^-1',dS)
