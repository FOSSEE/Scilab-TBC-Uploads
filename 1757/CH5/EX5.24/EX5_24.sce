//Example5.24  // To determine the slew rate of an op-amp
clc;
clear;
close;
f = 1 ; // MHz // unity frequency
Ic = 1*10^-6 ;  // uA // capacitor current
Vt = 0.7 ; // V  // threshold voltage

// the slew rate of an op-amp is defined as
// Slew rate = (dVo/dt)
Slewrate = 8*3.14*Vt*f ;
disp('the slew rate of an op-amp is = '+string(Slewrate)+' V/u sec ');

// The compansated capacitance Cm is
gm = (Ic/Vt);
Cm = (gm/4*3.14*f) ;
disp('The compansated capacitance value is = '+string(Cm)+'F ');


