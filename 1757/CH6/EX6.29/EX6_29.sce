//Example6.29  // to determine the resistance R1 when low and high saturated output states are given
clc;
clear;
close;
R2 = 20*10^3 ; // ohm
VH = 2 ; // V      crossover voltage
VL = -2 ;  // V     crossover voltage
VOH = 10 ; // V    saturated output states
VOL = -10 ; // V    saturated output states

// the upper crossover voltage of schmitt trigger is defined as
// V = (R1/(R1+R2))*VOH;
// solving above equation we get 
// 2R1+2R2 = 10R1 ;
R1 = (2*R2)/8 ;
disp('the value of resistance R1 is = '+string(R1)+' ohm' );
