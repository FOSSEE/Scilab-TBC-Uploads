//Example4.7  // To find closed loop gain and output voltage Vo of an non-inverting op-amp
clc;
clear;
close;
R1 = 10 ; //kilo ohm  // input resistance
R2 = 25 ; // kilo ohm  // feedback resistance
Vin = 10 ; //volt  // input voltage

// Closed loop gain of an non-inverting op-amp
Ac = 1+(R2/R1) ;
Ac = abs(Ac);
disp('The Closed loop gain of an non-inverting op-amp is = '+string(Ac)+'  ');

// the output voltage of an inverting op-amp
Vo = (1+R2/R1)*Vin ;
disp(' The output voltage of an non-inverting op-amp is = '+string(Vo)+' V ');

