//Example6.30  // to determine the value of resistance R1 and R2 when low and high saturated output states are given
clc;
clear;
close;
VH = 3 ; // V      crossover voltage
VL = -3 ;  // V     crossover voltage
VOH = 12 ; // V    saturated output states
VOL = -12 ; // V    saturated output states

// the upper crossover voltage of schmitt trigger is defined as
// V = (R1/(R1+R2))*VOH;
// solving above equation we get 
// 3R1+3R2 = 12R1 ;

// 3*R1 = R2 ;
R1 = 10*10^3 ; // ohm  we assume
R2 = 3*R1 ;
disp('the value of resistance R2 is = '+string(R2)+' ohm' );
