clc
//Initialization of variables
p=1.013*10^5 //N/m^2
k=1.38*10^-23
T=300 //K
v=445 //m/s
A=0.001*10^-6 //m^2
//calculations
n=p/(k*T)
J=n*v/4
escaping=J*A
//results
printf("No. of molecules escaping per unit time = %.2e mol/sec",escaping)
