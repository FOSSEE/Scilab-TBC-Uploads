//Example6_40  // Design an instrumentation amplifier
clc;
clear;
close;
//A = 5 to 500 ;  adjustable gain
VR = 100*10^3 ;

// the maximum differential gain of instrumentation amplifier is 500 
//Amax = (R4/R3)*(1+(2R2/R1));
//by solving above equation we get following equation
// 2R2 -249R1f = 0                                                  equation 1

// the minimum differential gain of instrumentation amplifier is 5
// Amin = (R4/R3)*(1+(2R2/R1)) ;
//by solving above equation we get following equation
// 2R2 -1.5R1f = 150*10^3                                           equation 2

//by solving equation 1 and 2 we get
disp('The value of resistance R1f is = 0.0606 K ohm ');

disp('The value of resistance R2 is = 75.5 K ohm ');

