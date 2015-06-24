clc 
//initialisation of variables
T1= 25 //C
T2= 600 //C 
k1= 6.0954 
k2= 3.2533*10^-3 //K
k3= -10.71*10^-7 //K^-1
//CALCULATIONS
dS= k1*2.303*log10((273+T2)/(273+T1))+k2*(T2-T1)+(k3/2)*((273+T2)^2-(273+T1)^2)
//RESULTS
printf ('increase in entropy= %.2f cal deg^-1 mole^-1',dS)
