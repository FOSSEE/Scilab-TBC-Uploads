//Example6.28  // to determine the hysteresis width of a schmitt trigger
clc;
clear;
close;
R1 = 15*10^3 ; // ohm
R2 = 90*10^3 ; // ohm
VTH = 10 ; // V
VTL = -10 ; // V

// the upper crossover voltage of schmitt trigger is defined as
VU = (R1/(R1+R2))*VTH;
disp('the upper crossover voltage of schmitt trigger is = '+string(VU)+' V' );

// the lower crossover voltage of schmitt trigger is defined as
VL = (R1/(R1+R2))*VTL;
disp('the lower crossover voltage of schmitt trigger is = '+string(VL)+' V' );

// the hysteresis width of schmitt trigger is
HW = VU-VL ;
disp('the hysteresis width HW of schmitt trigger is = '+string(HW)+' V' );
