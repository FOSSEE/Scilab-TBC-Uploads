clc
d1=0.1; //m
rho_Hg=13600; //kg/m^3
rho=1000; //kg/m^3
g=9.81; //m/s^2
H=0.8; //m
Cd=0.96;
Q=0.025; //m^3/s

a=%pi*d1^2/4;
dp=(rho_Hg-rho)*g*H;

B=((2*dp/(rho*((Q/Cd/a)^2)))+1)^(1/4);

d2=d1/B;
disp("Throat diameter =")
disp(d2)
disp("m")

// The shortest possible overall length of venturi is therefore an entrance cone of 7.1 cm length (20 degrees), a throat of 2.5 cm(0.25 pipe-diameters) and an exit cone of 19.7 cm (7.5 degrees) giving an overall length of 29.3 cm.

L=29.3; //cm
disp("Overall Length =")
disp(L)
disp("m")