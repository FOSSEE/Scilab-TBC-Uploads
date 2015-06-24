// Exa Misc. 6.4
clc;
clear;
close;
format('v',6)
// Given data
R_F = 500;// in k ohm
R_desh = 20;// in k ohm
Vin = 0.5;// in V
Rd_desh = 0;
R1min = 20;// in k ohm
R1max = 50;// in k ohm
// Ao = Vo/Vin = (1+(R_F/R1));
Vo_max = Vin*(1+(R_F/R1min));// output voltage corresponding to R1min
Vo_min = Vin*(1+(R_F/R1max));// output voltage corresponding to R1max
disp("Range of output voltage is : "+string(Vo_min)+" volts to "+string(Vo_max)+" volts.");
