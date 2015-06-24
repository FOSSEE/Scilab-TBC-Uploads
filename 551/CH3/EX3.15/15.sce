clc
p=120; //bar
v=0.01721; //m^3/kg

T=350; //°C
disp("Temperature=")
disp(T)
disp("°C")

h=2847.7; //kJ/kg
disp("specific enthalpy=")
disp(h)
disp("kJ/kg")

u=h-p*v*10^2; //kJ/kg
disp("Internal energy=")
disp(u)
disp("kJ/kg")