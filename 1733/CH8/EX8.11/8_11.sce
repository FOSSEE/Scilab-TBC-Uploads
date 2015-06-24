//8.11
clc;
Rf=100*10^3;
R1=1000;
Gain=-Rf/R1;
printf("Closed loop gain=%.0f", Gain)
Av=100000;
Zo=75;
f_unity=10^6;
beta=R1/(R1+Rf);
Z_closed=Zo/(1+Av*beta);
printf("\nClosed loop output impedance=%.6f ohm", Z_closed)
closed_loop_upper_cut_f=f_unity*beta;
printf("\nClosed  loop upper cutoff frequency=%.0f Hz", closed_loop_upper_cut_f)
closed_loop_input_impe=1000;
printf("\nClosed loop input impedance=%.0f ohm", closed_loop_input_impe)