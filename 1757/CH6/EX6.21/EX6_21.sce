// Example6.21  // to determine the input voltage of an op-amp
clc;
clear;
close;
Vo = 2 ; // V
R1 = 20*10^3 ; // ohm
R2 = 1*10^6 ;  // ohm

// the input voltage of an op-amp
Vin = -(R1/R2)*Vo ;
disp('The input voltage of an op-amp is = '+string(Vin)+ ' V');
