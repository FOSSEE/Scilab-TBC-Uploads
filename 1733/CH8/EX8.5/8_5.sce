//8.5
clc;
Av=100000;
beta=0.01;
Zi=2*10^6;
Closed_loop_input_imped=Zi*(1+Av*beta)*10^-6;
printf("Closed loop input impedance=%.0f Mega-ohm",Closed_loop_input_imped)
Zo=75;
Closed_loop_output_imped=Zo/(1+Av*beta);
printf("\nClosed loop output impedance=%.4f ohm",Closed_loop_output_imped)