clc;
clear;
printf("\t\t\tChapter4_example2\n\n\n");
// Determination of temperature of metal and cumulative heat rate
// properties of aluminium from appendix table B1
k=236; // thermal conductivity in W/(m.K)
Cp=896;// specific heat in J/(kg.K)
sp_gr=2.702; // specific gravity
density=2702; // density in kg/cu.m
D=0.05; // Diameter in m
L=0.60; // length in m
hc=550; // unit surface conductance between the metal and the bath in W/(K.sq.m)
Vs=(3.14*D^2*L)/4; // Volume in cu.m
As=(2*3.14*D^2/4)+(3.14*D*L); // surface area in sq.m
printf("\n\nThe volume of cylinder is %.5f cu.m",Vs);
printf("\n\nThe surface area of cylinder is %.3f sq.m",As);
Bi=(hc*Vs)/(k*As); // Biot Number
printf("\n\nThe Biot number is %.3f",Bi);
// Biot number is less than 1 hence lump capacitance equations apply
printf("\n\n\t\t\tSolution to part (a)\n");
T_i=50; // initial temperature in degree celsius
T_inf=2; // temperature of ice water bath in degree celsius
t=60; // time=1 minute=60 s
T=T_inf+(T_i-T_inf)*exp(-(hc*As)/(density*Vs*Cp)*t);
printf("\nThe temperature of aluminium is %.1f degree celsius",T);
printf("\n\n\t\t\tSolution to part (b)\n");
Q=density*Vs*Cp*(T_inf-T_i)*[1-exp(-(hc*As)/(density*Vs*Cp)*t)];
printf("\nThe cumulative heat transferred is %d J =%.1f kJ",abs(Q),abs(-Q/1000));
