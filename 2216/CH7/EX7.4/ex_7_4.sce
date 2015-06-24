//Example 7.4: Internal and quantum efficiency
clc;
clear;
close;
//given data :
format('v',4)
disp("part (a)")
tau_rr=1;
tau_nr=tau_rr;
eta_int=1/(1+(tau_rr/tau_nr));
disp(eta_int,"Internal quantum efficiency = ")
disp("part (b)")
format('v',7)
ns=3.7;
na=1.5;
as=0;
eta_ext=eta_int*(1-as)*((2*na^3)/(ns*(ns+na)^2));
disp(eta_ext,"External quantum efficiency = ")
