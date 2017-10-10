clc
Ax = 18.75 // cross sectional area in divergent part in m^2
A_ = 12.50 // throat area in m^2
AA_ = 1.5 // Area ratio
Pxox = 0.159 // pressure ratio from table
R = 0.287 // Gas constant
Pox = 0.21e03 // pressure in kPa
Px = Pxox*Pox // pressure calculation
// from the gas table on normal shock
Mx = 1.86 
My = 0.604 
Pyx = 3.87 
Poyx = 4.95 
Poyox = 0.786
Py = Pyx*Px
Poy = Poyx*Px
My = 0.604
Ay_ = 1.183
A2 = 25 
Ay = 18.75
A2_ = (A2/Ay)*Ay_
// From isentropic table 
M2 = 0.402
P2oy = 0.895
P2 = P2oy*Poy
syx = -R*log(Poy/Pox) // sy-sx

printf("\n Example 17.5\n")
printf("\n Exit Mach number is %f ",M2)
printf("\n Exit pressure is %f kPa",P2)
printf("\n Exit Stagnation pressure is %f kPa",Pox-Poy)
printf("\n Entropy increase is %f kJ/kg K",syx)
//The answers vary due to round off error

