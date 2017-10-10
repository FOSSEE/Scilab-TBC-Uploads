// Example 18_4
clc;funcprot(0);
// Given data
T_in=500;// K
T_out=1200;// K
mdot=1.00;// kg/min
R_u=8.314;// kJ/(kgmole.K)

// Calculation
// For CC1_4,
b=5;// The number of atoms in the molecule
F=3*b;// The degrees of freedom per molecule
M=12.0+(4*(35.5));// kg/kgmole
R=R_u/M;// kJ/(kg.K)
c_p=(1+(F/2))*R;// kJ/(kg.K)
Qdot=mdot*c_p*(T_out-T_in);// kJ/min
printf("\nThe heat transfer rate required to heat low-pressure gaseous carbon tetrachloride,Qdot=%3.0f kJ/min",Qdot);
