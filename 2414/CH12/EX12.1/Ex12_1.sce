clc;
close();
clear();
//page no 400
//prob no. 12.1
B=10^6;  //Hz
R=[1 100 10000] .*10^3  //ohm
Vrms=(16*10^-21*B .*R)^0.5;  //volts
mprintf(' R (K-ohm)   Vrms (micro-V)');
out=[R'.*10^-3 Vrms'.*10^6];
disp(out);
