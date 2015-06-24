//2.35
clc;
Vm=400*2^0.5/3^0.5;
f=50;
w=2*%pi*f;
ir=42;
L=3*Vm/(w*ir)*(sind(120-30)-sind(0))
printf("Inductance= %.3f H", L)