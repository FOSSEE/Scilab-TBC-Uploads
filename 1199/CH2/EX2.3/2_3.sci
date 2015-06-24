// 2.3
clc;
D=15*10^-3;
P=300*10^3;
sm=300*10^6;
t=[3*D^2*P/(16*sm)]^0.5*10^3;
printf("Thickness = %.2f mm",t)
P=150*10^3;
v=0.28;
E=200*10^9;
dm=3*(1-v^2)*D^4*P/(256*E*t^3);
printf("\nDeflection at center for Pressure of 150 kN/m2= %.4f mm",dm)
d=8900;
wn=(20*t*10^-3/D^2)*(E/(3*d*(1-v^2)))^0.5;
printf("\nNatural frequency of the diaphragm =%.0f rad/sec",wn)
