clc
//Intitalisation of variables
clear
p1= 1 //atm
p2= 0.1 //atm
p3= 0.1 //atm
R= 1.987 //cal mole^-1 K^-1
T= 2000 //K
Kp= 1.55*10^7
//CALCULATIONS
Qp= p1/(p2^2*p3)
dF= 2.303*R*T*log10(Qp/Kp)/1000
dF1= -2.303*R*T*log10(Kp)/1000
//RESULTS
printf ('free energy change = %.2f kcal ',dF)
printf ('\n free energy change = %.2f kcal ',dF1)
