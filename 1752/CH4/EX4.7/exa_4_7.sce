//Exa 4.7
clc;
clear;
close;
//given data
k=380;// in W/mK
delta =6*10^-2;// thickness of plate in meter
rho=8800;// kg/m^3
C=400;// J/kg-K
// l_s= V/A = delta/2
l_s= delta/2;// in meter
t=80;// in degree C
t_i=200;// in degree C
t_inf=30;// in degree C
hw= 75;// in W/m^2K
ha= 10;// in W/m^2K

// Part(i)
// ha*A*(t-t_inf_a)+ hw*A*(t-t_inf_w) = -rho*V*C*dtBYdtho, since t_ini_a = t_inf_w = t_inf = 30 degree C
// (ha+hw)*A*(t-t_inf)= -rho*V*C*dtBYdtho
// (ha+hw)/(rho*C*V)*A*dtoh = -dt/(t-t_inf)
// integrate('(ha+hw)/(rho*V*C)*A','toh',0,toh) = integrate('1/(t-t_inf)','t',t_i,t)
toh= -rho*l_s*C/(ha+hw)*log((t-t_inf)/(t_i-t_inf));
disp("Time required to cool plate to 80 degree C is : "+string(toh)+" seconds = "+string(toh/60)+" minutes");

// Part (ii)
t= -rho*l_s*C/(2*ha)*log((t-t_inf)/(t_i-t_inf));
disp("Time required to cool plate in only air is : "+string(t)+" seconds = "+string(t/60)+" minutes");

