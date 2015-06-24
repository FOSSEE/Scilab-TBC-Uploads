// Exa 7.12
clc;
clear;
close;
format('v',6)
// Given data
rho = 10;// in ohm-cm
epsilon_o = 8.86*10^-12;// in c^2/Nm^2
a = 2*10^-4;// in cm
// V_P= q*N_A*a^2/(2*epsilon)       (i)
//  and sigma= n*miu*q = N_A*miu*q => N_A= 1/(q*miu*rho)    (ii)
// From eq(i) and (ii), V_P = (a^2)/(2*miu_p*Epsilon*rho)
miu_p= 500;// in cm^2/V-sec  (for Si)
epsilon= 12*epsilon_o;// for Si
// The pinch off voltage for Si 
V_P = (a^2)/(2*miu_p*epsilon*rho);//in V
disp(V_P,"Part (a) : The pinch off voltage for Si in volts is : ")
miu_p= 1800;// in cm^2/V-sec  (for Ge)
epsilon= 16*epsilon_o;// for Ge
// The pinch off voltage for Ge 
V_P = (a^2)/(2*miu_p*epsilon*rho);//in V
disp(V_P,"Part (b) : The pinch off voltage for Ge in volts is : ")

