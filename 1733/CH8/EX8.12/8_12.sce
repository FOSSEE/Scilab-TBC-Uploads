//8.12
clc;
R2=100*10^3;
R1=100;
Zin=2*10^6;
Zo=75;
Gain=(R1+R2)/R1;
printf("Closed loop voltage gain=%.0f", Gain)
Av=100000;

beta=R1/(R1+R2);
Z_closed=Zin*(1+Av*beta)*10^-6;
printf("\nClosed loop input impedance=%.1f mega-ohm", Z_closed)

closed_loop_output_impe=Zo/(1+Av*beta);
printf("\nClosed loop output impedance=%.3f ohm", closed_loop_output_impe)