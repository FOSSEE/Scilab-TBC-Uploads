// Part(a)
V1 = 0.95;
P1 = 100e03;
v1 = 7;
V2 = 0.19;
P2 = 700e03;
v2 = 5;
w = 0.5;
u21 = 90e03; // u21 = u2-u1
Q = -58e03; // As heat is added Q = dQ/dt
W =  - w*( u21 + (P2*V2-P1*V1) + ((v2^2-v1^2)/2) ) + Q; // W = dW/dt  
disp("Watt",W,"The rate of work input is")
// Part (b)
A = (v2/v1)*(V1/V2); // A = A1/A2
d = sqrt(A); // d = d1/d2
disp(d,"The ratio of the inlet pipe diameter and outer pipe diameter is")