// Model of inverted pendulum
// 2.1

Km = 0.00767;
Kg = 3.7;
Rm = 2.6;
r = 0.00635;
M = 0.522;
m = 0.231;
g = 9.81;
L = 0.305;
J = 0;

D1 = (J+m*L^2)*(M+m)-m^2*L^2;
alpha = m*g*L*(M+m)/D1;
beta1 = m*L/D1;
gamma1 = m^2*g*L^2/D1;
delta = (J+m*L^2)/D1;

alpha1 = Km*Kg/Rm/r;
alpha2 = Km^2*Kg^2/Rm/r^2;

A = zeros(4,4);
A(1,3) = 1;
A(2,4) = 1;
A(3,2) = -gamma1;
A(3,3) = -alpha2*delta;
A(4,2) = alpha;
A(4,3) = alpha2*beta1;

B = zeros(4,1);
B(3) = alpha1*delta;
B(4) = -alpha1*beta1;
