w = 5;
h1 = 900e03;
h2 = 400e03;
v1 = 50; v2 = 150;
Q = -25*5; // Q = dQ/dt for w = 5kg
W = w*( (h1-h2) + ((v1^2-v2^2)/2) ) + Q; // W = dW/dt
disp("kW",W/1000,"The power output of the turbine is")
R = 285; T1 = 300; P1 = 100e03;
V = (w*R*T1)/P1; // V = dV/dt
A1 = V/v1; 
D1 = sqrt((4*A1)/%pi);
disp("m",D1,"The diameter of the inlet pipe is")