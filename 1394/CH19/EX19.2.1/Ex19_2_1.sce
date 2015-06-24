
clc
//initialization of variables
M= 25*10^-6 //gm/hr
d = 0.006 //g/cc
P = 1.4*10^-4// permeance in cm/sec
Deltac1 = 0.006 //Equivalent//cc
//Calculations
c1 = 1/3600 // unit conversion factor hr/sec
c2 = 1/18 //unit conversion factor mole/cc
m = M*c1*c2/d // moles/sec
A = m/(P*Deltac1)//cm^2
//Results
printf("you will need a membrane area of  %.3f cm^2",A)
