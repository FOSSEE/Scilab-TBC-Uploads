clc
p=140; //bar
h=3001.9; //kJ/kg

T=400; //0C
disp("Temperature=")
disp(T)
disp("°C")

v=0.01722; //m^3/kg
disp("The specific volume")
disp(v)
disp("m^3/kg")

u=h-p*v*10^2;
disp("specific internal energy=")
disp(u)
disp("kJ/kg")