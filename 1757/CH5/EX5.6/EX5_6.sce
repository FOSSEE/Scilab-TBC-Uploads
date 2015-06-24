//Example5.6 // find the input offset current of an op-amp circuit
clc;
clear; 
close;
Vo = 12*10^-3; // V  // output voltage
R1 = 2*10^3 ; // ohm  // input resistence
R2 = 150*10^3; // ohm  // feedback resistence

// the output voltage (Vo) of an op-amp circuit due to input offset current (Ios) is
// Vo = R2*Ios ;
Ios = Vo/R2;
disp('the output voltage (Vo) of an op-amp circuit due to input offset current (Ios) is = '+string(Ios)+' A ');

