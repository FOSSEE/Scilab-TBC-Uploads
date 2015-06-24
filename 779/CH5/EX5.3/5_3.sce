P1 = 4e06;
t1 = 400;
h1 = 3213e03;
V1 = 0.073;
P2 = 3.5e06;
t2 = 392;
h2 = 3202e03;
V2 = 0.084;
Q = -8.5e03;
v1 = sqrt((2*(h1-h2+Q))/(1.15^2-1));
A1 = (%pi/4)*0.2^2;
w = (A1*v1)/V1;
disp("Kg/s",w,"The stean flow rate is")
