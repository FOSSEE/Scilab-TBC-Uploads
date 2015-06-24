clc
M=3; //Mach number
d=0.2; //m
p_nozzle=7.85; //kN/m^2
T_nozzle=200; //K
y=1.4;
A=%pi/4*d^2;

disp("Reservoir pressure =")
p_res=p_nozzle*(1+((y-1)/2*M^2))^(y/(y-1));
disp(p_res)
disp("kN/m^2")

disp("Reservoir temperature =")
T_res=T_nozzle*(1+((y-1)/2*M^2));
disp(T_res)
disp("K")

disp("Throat area (critical) =")
Ac=A*M/((2+(y-1)*M^2)/(y+1))^((y+1)/2/(y-1));
disp(Ac)
disp("m^2")
