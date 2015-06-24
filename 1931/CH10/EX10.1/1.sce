clc
clear
//INPUT DATA
ec=4*10^-4//electrical conductivity of intrinsic silicon at room temperature in ohm^-1 m^-1
me=0.14//The electron mobility in m^2 V^-1 s^-1
mh=0.04//The hole mobility in m^2 V^-1 s^-1
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
ni=(ec/(e*(me+mh)))/10^16//The intrinsic carrier concentration at room temperature in m^-3 *10^16

//OUTPUT
printf('The intrinsic carrier concentration at room temperature is %3.3f *10^16.m^-3 \n Since ne=nh=ni from law of mass action the electron and hole concentrations are 1.33*10^16.m^-3',ni)
