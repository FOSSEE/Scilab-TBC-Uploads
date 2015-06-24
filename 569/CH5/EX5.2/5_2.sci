// Calculate the angle of twist
clc;
T=100;
G=80*10^9;
d=2*15*10^-3;
th=16*T/(%pi*G*d^3)
disp(th,' angle of twist(rad)=')
