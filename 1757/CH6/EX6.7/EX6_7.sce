//Example6.7   // determine the load current and output voltage
clc;
clear;
close;
Vin = -5 ;  // V
ZL = 200 ; // ohm
R1 = 10*10^3 ; // ohm
R2 = 10*10^3 ; // ohm
R3 = 1*10^3 ; // ohm
R4 = 1*10^3 ; // ohm

// the load c/n of the given voltage to c/n converter circuit is given by
iL =-Vin/(R1*R4)*R2 ;
disp('The load current iL is  = '+string(iL)+' A');

// the voltage across the load 
VL = iL*ZL;
disp('The voltage across load VL is  = '+string(VL)+' V');

// the non-inverting current across i3 and i4 are
i3 = VL/R3 ;
disp('The non-inverting current across i3 is = '+string(i3)+' A');

i4 = iL+i3 ;
disp('The non-inverting current across i4 is  = '+string(i4)+' A');

// the output voltage of given voltage to current converter is given by
Vo = (iL*R3)+VL ;
disp('The output voltage of given voltage to current converter is  = '+string(Vo)+' V');
