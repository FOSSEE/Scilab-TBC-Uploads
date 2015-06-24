// Calculate the deflection at center
clc;
D=15*10^-3;
P=300*10^3;
sm=300*10^6;
t=[3*D^2*P/(16*sm)]^0.5;
disp(t,' thickness(m)=')
P=150*10^3;
v=0.28;
E=200*10^9;
dm=3*(1-v^2)*D^4*P/(256*E*t^3);
disp(dm,' deflection at center for Pressure of 150 kN/m2(m)=')
