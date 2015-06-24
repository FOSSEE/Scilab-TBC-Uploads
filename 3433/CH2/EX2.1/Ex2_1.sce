clear;
clc;
funcprot(0);

//given data
T01_te = 298;//in K
mdot_te = 15;//in kg/s
p01_te = 101;//in kPa
T01_cr = 236;//in K
p01_cr = 10.2;//in kPa
N_te = 6200;//in rpm
pi = 20;//pressure ratio
gamma = 1.4;
Cp = 1005;//in J/(kg.K)
eff = 0.85;//efficiency

//Calculations
mdot_cr = (p01_cr/sqrt(T01_cr))*(mdot_te*sqrt(T01_te)/p01_te);
N_cr = sqrt(T01_cr/T01_te)*N_te;
delT0_T01 = (((pi^((gamma-1)/gamma)) - 1)/eff);
P_cr = mdot_cr*Cp*T01_cr*delT0_T01;

//Results
printf('The mass flow rate = %.2f kg/s',mdot_cr);
printf('\n Rotational speed = %d rpm',N_cr);
printf('\n The power input at the cruise condition = %d kW.',P_cr/1000);

//there is a small error in the answer given in textbook
