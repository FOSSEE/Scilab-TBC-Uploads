clc;
N=11500; // Speed in rpm
T01=21+273; // Inlet total temperature in kelvin
p01=1;// Inlet total pressure in bar
p02=4;// Outlet total pressure in bar
D=0.75; // impeller diameter in m
mu=0.92;// slip factor
Cp=1.005; // specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio

u=3.14*D*N/60;
W=mu*u^2;
T02=W/(Cp*10^3)+T01;
T_02=T01*(p02/p01)^((r-1)/r);
eff_c=(T_02-T01)/(T02-T01);

disp ("%",eff_c*100,"Efficiency of the compressor = ");
