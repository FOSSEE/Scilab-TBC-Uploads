V1 = 0.37;
P1 = 600e03;
v1 = 16;
V2 = 0.62; 
P2 = 100e03;
v2 = 270;
Z1 = 32;
Z2 = 0;
g = 9.81; 
Q = -9e03; // heat loss Q = dQ/dt
W = 135e03; // Work done W = dW/dt
U12 = (P2*V2-P1*V1) + ((v2^2-v1^2)/2) + (Z2-Z1)*g + W - Q; // U12 = U1-U2
disp("Joule",U12,"The internal energy decreases by") 