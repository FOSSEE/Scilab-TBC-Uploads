clc
//Intitalisation of variables
clear
k1= 8.04 //cal deg^-1 mole^-1
k2= 7*10^-4 //cal deg^-2 mole^-1
k3= 5.1*10^-6 //cal deg^-3 mole^-1 
T1= 125 //C
T2= 25 //C
cv= 8.92 //cal deg^-1 mole^-1
//CALCULATIONS
dSp= k1*log((273+T1)/(273+T2))+k2*(T1-T2)+k3*0.5*((273+T1)^2-(273+T2)^2)
dSp1=  cv*log((273+T1)/(273+T2))
//RESULTS
printf ('Increase in entropy = %.2f cal deg^-1 mole^-1',dSp)
printf ('\n Increase in entropy = %.2f cal deg^-1 mole^-1',dSp1)
