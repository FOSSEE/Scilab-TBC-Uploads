//Example5.27  // To find the maximum frequency of op-amp circuit
clc;
clear;
close;
Vin = 0.015 ; // V  // input voltage
Slewrate = 0.8 ;  // V/uV   // Slew rate of an op-amp
R2 = 120*10^3 ;  //  ohm  // feedback resistance
R1 = 5*10^3 ;  // ohm  // input resistance

// the closed loop gain
// ACL = (mod (Vo/Vin)) = (mod(R2/R1));
ACL = abs(R2/R1);
disp('the closed loop gain ACL is = '+string(ACL)+' ');

// the output gain factor K is given as
K = ACL*Vin ;
disp('The output gain factor K is = '+string(K)+' V');

// the maximum frequency of an op-amp is
wmax = (Slewrate/K);
disp('The wmax is = '+string(wmax)+'*10^6 rad/sec'); // *10^6 because Slewrate is V/uV 

// the signal frequency may be w = 500*10^3 rad/sec  that is less than the maximum frequency value
