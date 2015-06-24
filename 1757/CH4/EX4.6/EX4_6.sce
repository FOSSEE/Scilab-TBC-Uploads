//Example4.6  // To find closed loop gain and output voltage Vo of an inverting op-amp
clc;
clear;
close;
R1 = 10 ; //kilo ohm  // input resistance
R2 = 25 ; // kilo ohm  // feedback resistance
Vin = 10 ; //volt  // input voltage

// Closed loop gain of an inverting op-amp
Ac = -(R2/R1) ;
disp('The Closed loop gain of an inverting op-amp is = '+string(Ac)+'  ');
Ac = abs(Ac);
disp('The |Ac| Closed loop gain of an inverting op-amp is = '+string(Ac)+'  ');

// the output voltage of an inverting op-amp
Vo = -(R2/R1)*Vin ;
disp('  The output voltage of an inverting op-amp is = '+string(Vo)+' V ');
