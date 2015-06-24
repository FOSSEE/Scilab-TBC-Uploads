clc();
clear;
//Given :
deltaIE = 2; // in mA
deltaIB = 5; // in mA
Rl = 200*10^3; // load resistance in ohm
ri = 200; // input resistance in ohm
// IE= IB + IC  ,   1 muA = 1.0*10^-3 mA
deltaIC = deltaIE - deltaIB*10^-3 ;// in mA
alpha = deltaIC/deltaIE; 
A = alpha*(Rl/ri);
printf("Voltage gain = %.1f ",A);
