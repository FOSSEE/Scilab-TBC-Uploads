clc
//initialisation of variables
E= 0.35240 //volts
E1= 0.35321 //volts
E2= 0.35140 //volts
T= 25 //C
T1= 20 //C
T2= 30 //C
n= 2 //electrons
F= 96493.1 //coloumb
//CALCULATIONS
r= (E-E1)/(T-T1)
r1= (E2-E)/(T2-T)
R= (r+r1)/2
S= n*F*R
H= n*F*((273.16+T)*R-E)
//RESULTS
printf (' Entropy = %.1f joules deg^-1',S)
printf (' \n Enthalpy = %.f joules',H-27)
