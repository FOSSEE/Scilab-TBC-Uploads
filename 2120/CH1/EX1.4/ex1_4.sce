// Exa 1.4
clc;
clear;
close;
// Given data
m = 1.5;// in kg
pi = 0.1;// in MPa
pi= pi*10^6;// in Pa
pf = 0.7;// in MPa
pf= pf*10^6;// in Pa
rho_i = 1.16;// kg per m^3
vi = m/rho_i;// in m^3
WorkDone= pi*vi*log(pi/pf);// in J
disp(WorkDone*10^-3,"Work done in kJ is : ")
if WorkDone<0 then
disp("The -ve sign indicates work is done on the system, hence");
disp((WorkDone*10^-3),"The work done by the piston in kJ is : ")
end
