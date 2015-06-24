clc
//Initialization of variables
t=80 //F
phi=0.3
w=0.00643
//calculations
H=0.24*t+ w*(1061+0.444*t)
//results
printf("enthalpy = %.2f Btu/lbm dry air",H)
