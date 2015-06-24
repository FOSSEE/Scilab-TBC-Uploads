
//Example5.26  // To find the maximum frequency of input signal in op-amp circuit
clc;
clear;
close;
Vin = 25*10^-3 ; // V  // input voltage
Slewrate = 0.8/10^-6 ;  // V/uV   // Slew rate of an op-amp
R2 = 350*10^3 ;  //  ohm  // feedback resistance
R1 = 10*10^3 ;  // ohm  // input resistance

// the closed loop gain
// ACL = (mod (Vo/Vin)) = (mod(R2/R1));
ACL = abs(R2/R1);
disp('the closed loop gain ACL is = '+string(ACL)+' ');

// the output gain factor K is given as
K = ACL*Vin ;
disp('The output gain factor K is = '+string(K)+' V');

// the maximum frequency of an op-amp is
wmax = (Slewrate/K);
fmax = wmax/(2*3.14);
disp('The maximum frequency of an op-amp fmax = '+string(fmax/1000)+' KHz');
