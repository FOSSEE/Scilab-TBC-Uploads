
clc
//initialization of variables
Dl=1.9*10^-5// Diffusion co efficient for liquid phase in cm^2/sec
Dg = 0.090 //Diffusion co efficient for gas phase in cm^2/sec
R = 82 // Gas constant in cm^3-atm/g-mol-K
T = 363 //Temperature in Kelvin
H1 = 0.70 // Henrys constant in atm
c = 1/97 // concentration of water in g-mol/cm^3
//Calculations
kl = (Dl/0.01)*c // m.t.c in liquid phase in mol/cm^2/sec
kp = (Dg/0.1)/(R*T)// m.t.c in gas phase in gmol/cm^2-sec-atm
KL = 1/((1/kl)+(1/(kp*H1)))*10^5// Overall m.t.c in x*10^-5 mol/cm^2-secliquid phase
//Results
printf("The overall m.t.c in liquid side is %.2f x10^-5 mol/cm^2-sec",KL)// answer wrong in textbook
