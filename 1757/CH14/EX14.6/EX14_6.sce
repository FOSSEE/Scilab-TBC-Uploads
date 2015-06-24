//Example14.6 // determine the duty cycle of the switching regulator circuit
clc;
clear;
close;
T =120 ; //msec // total pulse time
// T = ton + toff ;
ton = T/2 ;

// The duty cycle of switching regulator circuit is given by
d = ton/T;
disp('The output voltage of switching regulator circuit is = '+string(d)+'  ');
