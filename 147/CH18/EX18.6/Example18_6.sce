//Number of revolutions per kWh N1 at V and I, Time t for revolutions N2
close();
clear;
clc;
V = 230;//V
I = 10;//A
N1 = 900;//revolution
t = 69;//seconds
N2 = 20;
theta = 0;
//Energy consumed 'E'
E = V*I/2*cos(theta)*t/3600*10^(-3);
//Number of revolutions meter should have of  running correct 'N'
N = E*N1;
Error = (N2-N)/N*100;
mprintf('Error = %0.4f %%',Error);