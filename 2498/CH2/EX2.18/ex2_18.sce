// Exa 2.18
clc;
clear;
close;
format('v',6)
// Given data
V1 = 220;// in V
N2 = 1;
N1 = 10;
R_L = 250;// in ohm
V2 = V1 * (N2/N1);// in V
Vm = sqrt(2)*V2;// in V
Im =Vm/R_L;// in A
Iav = (2*Im)/%pi;// in A
Idc = Iav;// in A
// The dc output volatge 
Vdc = Idc* R_L;// in V
disp(Vdc,"The dc output volatge in V is");
Pdc = (Idc^2)*R_L;// in W
Irms = (Im)/sqrt(2);// in A
Pac = (Irms^2)*R_L;// in W
// The rectification efficiency 
Eta = (Pdc/Pac)*100;// in %
disp(Eta,"The rectification efficiency in % is");
// The peak inverse volatge 
PIV = Vm;// in V
disp(PIV,"The peak inverse volatge in V is");
f_in = 50;// in Hz
// The output frequency 
f_out = 2*f_in;// in Hz
disp(f_out,"The output frequency in Hz is");

// Note: The answer of rectification efficiency in the book is not accurate.
