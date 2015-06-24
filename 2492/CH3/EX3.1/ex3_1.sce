// Exa 3.1
format('v',5)
clc;
clear;
close;
// Given data
// V = 50 * snid(omega*t);
Vm = 50;// in V
r_d = 20;// in ohm
R_L = 800;// in ohm
Im = Vm/(r_d+R_L);// in A
Im = Im * 10^3;// in mA
disp(Im,"The value of Im in mA is");
Idc = Im/%pi;// in mA
disp(Idc,"The value of Idc in mA is");
Irms = Im/2;// in mA
disp(Irms,"The value of Irms in mA is");
// The ac power input
P_ac_input = (Irms*10^-3)^2*(r_d+R_L);// in W
disp(P_ac_input,"The ac power input in W is");
P_dc_output = (Idc*10^-3)^2*R_L;// in W
// The dc power output 
disp(P_dc_output,"The dc power output in W is");
// The dc output voltage 
V_dc_out = Idc*10^-3*R_L;// in V
disp(V_dc_out,"The dc output voltage in V is");
//The Efficiency of rectification, Eta = ((Idc^2*R_L)*100)/(Irms^2*(R_L+r_d)) = (8/%pi) * ((R_L*100)/(R_L+r_d))
Eta = 8/%pi^2 * ((R_L*100)/(R_L+r_d));// in %
disp(Eta,"The Efficiency of rectification in % is");
ripplefactor = sqrt( (Irms/Idc)^2 -1 );
disp(ripplefactor,"The ripple factor is");

// Note: In the book, the calculation to evaluate the value of efficiency of rectification is wrong.
