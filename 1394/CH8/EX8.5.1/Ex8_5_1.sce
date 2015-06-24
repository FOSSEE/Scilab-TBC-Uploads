

clc
//initialization of variables
Dl=2.1*10^-5// Diffusion co efficient for Oxygen in air in cm^2/sec
Dg = 0.23 //Diffusion co efficient for Oxygen in water in cm^2/sec
R = 82 // Gas constant in cm^3-atm/g-mol-K
T = 298 //Temperature in Kelvin
l1 = 0.01 // film thickness in liquids in cm
l2 = 0.1 // film thickness in gases in cm
H1 = 4.3*10^4 // Henrys constant in atm
c = 1/18 // concentration of water in g-mol/cm^3
//Calculations
kl = (Dl/l1)*c // m.t.c in liquid phase in mol/cm^2/sec
kp = (Dg/l2)/(R*T)// m.t.c in gas phase in gmol/cm^2-sec-atm
KL = 1/((1/kl)+(1/(kp*H1)))// Overall m.t.c in mol/cm^2-sec liquid phase
//Results
printf("The overall m.t.c in liquid side is %.1e mol/cm^2-sec",KL)
