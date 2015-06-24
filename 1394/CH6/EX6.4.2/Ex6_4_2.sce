
clc
//Initialzation of variables
kb = 1.38*10^-16 // g-cm^2/sec^2-K
T = 310 //Kelvin
Mu = 0.01 // g/cm-sec
R0 = 2.5*10^-8 //cm
d = 30*10^-8 //cm
//Calculations
D = (kb*T/(6*%pi*Mu*R0))*(1+((9/8)*(2*R0/d)*(log(2*R0/d)))+((-1.54)*(2*R0/d)))//cm^2/sec
//Results
printf("The diffusion coefficient is %.8f cm^2/sec",D)
