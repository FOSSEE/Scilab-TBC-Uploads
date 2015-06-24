clc
disp("(i) Higher heating value at constant pressure")
m=4*18;
h_fg=2443; //kJ/kg
LHVp=2044009; //kJ/kg
R0=8.3143; //kJ/kg K
T=298; //K

HHVp=LHVp+m*h_fg;
disp("HHVp =")
disp(HHVp)
disp("kJ/kg")

disp("(ii) Higher heating value at constant volume")
dn=3-(1+5);

HHVv=HHVp+dn*R0*T;
disp("HHVv =")
disp(HHVv)
disp("kJ/kg")