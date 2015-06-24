//Example14.5 // determine the duty cycle of the switching regulator circuit
clc;
clear;
close;
Vo = 4.8 ; // V // output voltage
Vin = 5 ; // V // input voltage

// The output voltage of switching regulator circuit is given by
// Vo = d*Vin ;

// Duty cycle is given as
d =Vo/Vin ;
disp('The output voltage of switching regulator circuit is = '+string(d)+'  ');
