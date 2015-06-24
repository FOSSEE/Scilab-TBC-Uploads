//8.7
clc;
f_unity=10^6;
Av=100000;
open_loop_upper_cutoff_f=f_unity/Av;
printf("open loop upper cutoff frequency=%.0f Hz", open_loop_upper_cutoff_f)
disp('when beta=0.001')
beta=0.001;
Closed_loop_gain=Av/(1+Av*beta);
printf("\nClosed loop gain=%.1f ",Closed_loop_gain)
upper_cutoff_frequency=f_unity/Closed_loop_gain;
printf("\nUpper cutoff frequency=%.0f Hz", upper_cutoff_frequency)
disp('when beta=0.01')
beta=0.01;
Closed_loop_gain=Av/(1+Av*beta);
printf("\nClosed loop gain=%.1f ",Closed_loop_gain)
upper_cutoff_frequency=f_unity/Closed_loop_gain;
printf("\nUpper cutoff frequency=%.0f Hz", upper_cutoff_frequency)
disp('when beta=0.1')
beta=0.1;
Closed_loop_gain=Av/(1+Av*beta);
printf("\nClosed loop gain=%.3f ",Closed_loop_gain)
upper_cutoff_frequency=f_unity/Closed_loop_gain;
printf("\nUpper cutoff frequency=%.0f Hz", upper_cutoff_frequency)
