//Example5.28  // To determine the compensated capacitance of an op-amp
clc;
clear;
close;
Slewrate = 10 ; // V/u sec
Ic = 1*10^-3 ;  // mA // capacitor current
Vt = 0.7 ; // V  // threshold voltage

// the slew rate of an op-amp is defined as
// Slew rate = (dVo/dt)
// the unity frequency f is
f =(Slewrate/(8*3.14*Vt));
f = f*10^6;  // *10^6 because Slew rate is V/uV 
disp('the unity frequency f is = '+string(f)+' Hz ');

// The compansated capacitance Cm is
gm = (Ic/Vt);
Cm = (gm)/(4*3.14*f) ;
disp('The compansated capacitance Cm value is = '+string(Cm)+' F ');



