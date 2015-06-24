// Example 2.13
clc;
clear;
close;
// Given data
format('v',6);
SR= 6;// slew rate in V/µs
SR= 6*10^6;// in V/s

// Part (i) For Vmax= 1V
Vmax= 1;// in V
fmax= SR/(2*%pi*Vmax);// limiting frequency in Hz
fmax= fmax*10^-6;// in MHz
disp(fmax,"Part (i) : The limiting frequency for maximum voltage of 1V in MHz is : ");

// Part (ii) For Vmax= 10V
Vmax= 10;// in V
fmax= SR/(2*%pi*Vmax);// limiting frequency in Hz
fmax= fmax*10^-3;// in kHz
disp(fmax,"Part (ii) : The limiting frequency for maximum voltage of 10V in kHz is : ");



