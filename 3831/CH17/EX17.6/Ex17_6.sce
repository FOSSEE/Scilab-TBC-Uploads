// Example 17_6
clc;funcprot(0);
// Given data
mg=490;// N
Z=1.00;// m
g_c=1;// The gravitational constant
delt=1.00;// s

// Calculation
E=(mg*Z)/g_c;// J
W=E/delt;// J/s
n_T_muscle=25/100;// The energy conversion efficiency
U_body=-W/n_T_muscle;// J/s
Q=U_body+W;// J/s
delU=-(1)*(2.51);// MJ
tau=delU/(U_body*10^-6);// s
tau=tau/60;// min
printf("\nThe time required to produce a change in the total internal energy of the system that equals the energy content of one pint of ice cream,tau=%2.1f min",tau);
