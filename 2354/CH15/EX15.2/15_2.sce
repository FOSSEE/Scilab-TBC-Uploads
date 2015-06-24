//example 15.2
clc; funcprot(0);
// Initialization of Variable
Ts=473;
sigma=5.67e-8;
Tsur=298;
h=15.0;
pi=3.14;
D=0.07;
epsilon=0.8;//emmisivity
E=epsilon*sigma*Ts^4;
G=sigma*Tsur^4;
disp(G,"irradiation in W/m^2");
q=h*pi*D*(Ts-Tsur)+epsilon*pi*D*sigma*(Ts^4-Tsur^4);
disp(q,"heat transfer per unit length in W/m");
clear()
