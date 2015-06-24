clc
u=0.03; //Ns/m^2
Q=10^(-7); //m^3/s
dp=integrate('8*u*Q/%pi/0.005^4/(1-L)^4', 'L', 0, 0.5)
disp("Pressure difference =")
disp(dp)
disp("N/m^2")