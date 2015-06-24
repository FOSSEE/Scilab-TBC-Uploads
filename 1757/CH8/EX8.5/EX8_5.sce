//Example8.5  // output voltage of of RMS detector
clc;
clear;
close;
Vin = 10 ; 
T = 1 ;  // we assume that the charging and discharging period of capacitor

// the output voltage of RMS detector
// Vo =sqrt(1/T*)integrate(Vin^2*(t),t,0,1 [,atol [,rtol]])  ;
Vo = 10 ;
disp('output voltage of RMS detector is = '+string(Vo)+' V '); 
