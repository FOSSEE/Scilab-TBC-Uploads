

clc
//initialization of variables
k1 = 1.18 // M.T.C in lb-mol NH3/hr-ft^2
k2 =  1.09 // M.T.C in lb-mol NH3/hr-ft^2
M2 = 18 // Mol wt of NH3 in lb/mol
d = 62.4 //  Density of NH3 in lb/ft^3
c1 = 30.5 // Conversion factor from ft to cm
c2 = 1/3600 // Conversion factor from seconds to hour
R = 1.314 // Gas constant in atm-ft^3/lb-mol-K
T = 298 // Temperature in Kelvin scale
//Calculations
kf1 = (M2/d)*k1*c1*c2 // M.T.C in cm/sec
kf2 = R*T*k2*c1*c2 // M.T.C in cm/sec
//Results
printf("the M.T.C for liquid is %.1e cm/sec",kf1)
printf("\n the M.T.C for gas is %.1f cm/sec",kf2)
