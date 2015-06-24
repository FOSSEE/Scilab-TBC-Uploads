//Example14.7 // determine the duty cycle of the switching regulator circuit
clc;
clear;
close;
ton = 12 ; //msec // on time of pulse
// ton = 2*toff ;  given
// T = ton + toff ;
toff = ton/2 ;
T = ton+toff ;  // total time

// The duty cycle of switching regulator circuit is given by
d = ton/T;
disp('The output voltage of switching regulator circuit is = '+string(d)+'  ');
