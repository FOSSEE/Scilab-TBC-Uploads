//Example4.8  // to find out closed loop gain and output voltage Vo
clc;
clear;
close;
R1 = 10 ; //kilo ohm  // input resistance
R3 = 10 ; //kilo ohm  // input resistance
R2 = 25 ; // kilo ohm  // feedback resistance
R4 = 25 ; // kilo ohm  // feedback resistance
Vin2 = 10 ; //volt  // input voltage
Vin1 = -10 ; //volt  // input voltage

// closed loop gain of differntial op-amp is given by
Ac = (R2/R1) ;
Ac = abs(Ac); 
disp('The closed loop gain of differntial op-amp is = '+string(Ac)+'  ');

// the output voltage of an non-inverting op-amp is given by
Vo = (R2/R1)*(Vin2-Vin1) ;
disp('The output voltage of an non-inverting op-amp is= '+string(Vo)+' V ');
