//8.6
clc;
Av=100000;
beta=0.001;
Closed_loop_gain=Av/(1+Av*beta);
printf("\nClosed loop gain=%.1f ",Closed_loop_gain)
Desensitivity=(1+Av*beta);
printf("\nDesensitivity=%.0f",Desensitivity)