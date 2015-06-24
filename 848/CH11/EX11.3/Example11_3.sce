//clear//
//Caption: Maximum input power and maxmimum output power
//Example 11.3
//page 404
clear;
clc;
close;
Lambda_p = 980e-09; //pump wavelength
Lambda_s = 1550e-09; //signal wavelength
Pp_in = 30e-03; //input pump power in watts
G = 10^(20/10); //gain
Ps_in = (Lambda_p/Lambda_s)*Pp_in/(G-1)
disp(Ps_in*1e06,'The maximum input power in uW is Ps_in =')
Ps_out = Ps_in+(Lambda_p/Lambda_s)*Pp_in;
disp(Ps_out*1e03,'The maximum output power in mW is Ps_out =')
disp(10*log10(Ps_out*1e03),'The maximum output power in dBm is Ps_out =')
//Result
//The maximum input power in uW is Ps_in = 191.59335  
//The maximum output power in mW is Ps_out = 19.159335  
//The maximum output power in dBm is Ps_out =  12.823804  
