clc;
disp("Example 1.1")
R=0.12
// manometer reading in m
densitym= 13600 // of mercury in kg/m^3
densityw= 1000 // of water in kg/m^3
g=9.81 // acceleration due to gravity in m/s^2
p=R*g*(densitym-densityw)
disp(" Pressure difference is ")
disp(p)
disp(" N/m^2 ")
