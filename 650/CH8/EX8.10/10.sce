clc
m=12*10^3/3600; // kg/s
Rho=815; // kg/m^3
d=0.05; // m
e=0.02;
d1=50; // m
d2=0.038; // m
g=9.8; // m

v=4*m/Rho/%pi/d^2;

f1=1/(2*log10(d1/e)+2.28)^2;

L_eq=d1+2*d1*d;

H_50mm=4*f1*L_eq*v^2/(d*2*g);

v=4*m/(Rho*%pi*d2^2);

f2=1/(2*log10(38/e)+2.28)^2;

L_eq=d1+2*d1*d2;
H_38mm=4*f2*L_eq*v^2/(d2*2*g);

Hr=0.2*v^2/(2*g);

H_L=H_50mm+H_38mm+Hr;

del_p_f=Rho*g*H_L;
disp("The total pressure drop due to friction through the pipe system is ")
disp(del_p_f);
disp("N/m^2")
