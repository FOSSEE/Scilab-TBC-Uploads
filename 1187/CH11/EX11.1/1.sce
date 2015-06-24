clc

disp("(a) the density at plane 1")

p1=1.5*10^5; // N/m^2
R=287; // J/kg.K
T1=271; // K

rho1=p1/R/T1; 
disp("Density at plane 1 =")
disp(rho1)
disp("kg/m^3")

disp("(b) the stagnation temperature")

u1=270; // m/s
cp=1005; // J/Kg.K

T0=T1+u1^2/(2*cp);
disp("The stagnation temperature =")
disp(T0)
disp("K")

disp("(c) the temperature and density at plane 2")

u2=320; // m/s
p2=1.2*10^5; // N/m^2

T2=T0-u2^2/(2*cp);
disp("Temperature = ")
disp(T2)
disp("K")

rho2=p2/(R*T2);
disp("density =")
disp(rho2)
disp("kg/m^3")
