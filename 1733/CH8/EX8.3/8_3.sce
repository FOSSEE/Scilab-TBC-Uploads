//8.3
clc;
open_loop_gain=100000;
FF=0.01;
Closed_loop_gain=open_loop_gain/(1+open_loop_gain*FF);
printf("Closed loop gain=%.1f",Closed_loop_gain)
Vi=2*10^-3;
output=Vi*Closed_loop_gain;
printf("\nOutput=%.4f V",output)
Error_voltage=output/open_loop_gain*10^6;
printf("\nError voltage=%.3f uV",Error_voltage)