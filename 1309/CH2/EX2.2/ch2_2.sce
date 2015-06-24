clc;
clear;
printf("\t\t\tChapter2_example2\n\n\n");
// determination of heat transfer through composite wall for materials in parallel
// values of thermal conductivities in W/(m.K) from appendix table B3
k1=0.45;// thermal conductivity of brick
k2a=0.15; // thermal conductivity of pine
k3=0.814; // thermal conductivity of plaster board
k2b=0.025; // thermal conductivity of air from appendix table D1
// Areas needed fpor evaluating heat transfer in sq.m
A1=0.41*3; // cross sectional area of brick layer 
A2a=0.038*3; // cross sectional area of wall stud
A2b=(41-3.8)*0.01*3; // cross sectional area of air layer
A3=0.41*3; // cross sectional area of plastic layer 
dx1=0.1; // thickness of brick layer in m
dx2=0.089; // thickness of wall stud and air layer in m
dx3=0.013; // thickness of plastic layer in m
R1=dx1/(k1*A1); // Resistance of brick layer in K/W
R2=dx2/(k2a*A2a+k2b*A2b); // Resistance of wall stud and air layer in K/W
R3=dx3/(k3*A3); // Resistance of plastic layer in K/W
printf("\nResistance of brick layer is %.3f K/W",R1);
printf("\nResistance of wall stud and air layer is %.2f K/W",R2);
printf("\nResistance of plastic layer is %.3f K/W",R3);
T1=25; // temperature of inside wall in degree celsius
T0=0; // temperature of outside wall in degree celsius
qx=(T1-T0)/(R1+R2+R3); // heat transfer through the composite wall in W
printf("\nHeat transfer through the composite wall is %.1f W",qx);
