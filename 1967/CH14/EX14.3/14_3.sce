clc
//initialisation of variables
clear
p1= 25.7 //atm
p2= 11.84 //atm
T1= 173 //K
T2= 153 //K
T3= 25 //C
//CALCULATIONS
dH= log10(p1/p2)*4.579*T1*T2/(T1-T2)
p=  p1*10^((dH/4.576)*(273+T3-T1)/((273+T3)*T1))
s= 1/p
//RESULTS
printf ('Heat of reaction = %.f cal mole^-1',dH)
printf ('\n pressure = %.f atm',p)
printf ('\n Solubility of methane = %.5f ',s)
