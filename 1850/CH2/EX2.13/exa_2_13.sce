// Exa 2.13
clc;
clear;
close;
// Given data
format('v',9)
SR= 6;// in V/micro S
SR=SR*10^6;// in V/s
// (i)
V_max= 1;// in volt
f_max= SR/(2*%pi*V_max);
disp(f_max*10^-6,"Frequency for V_max=1V in MHz")
// (ii)
V_max= 10;// in volt
f_max= SR/(2*%pi*V_max);
disp(f_max*10^-3,"Frequency for V_max=10V in kHz")
