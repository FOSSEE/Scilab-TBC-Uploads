clc;
s=80;       //height in m
p=20;       //power of hoist in hp
m=500;     //weight in kg
g=9.8;     //gravitational constant in m/sec square
e=0.8;     //efficiency = 80 percent
F=m*g;     //Force in Newton
P=e*p*746;  //calculating power in watt
t=(F*s)/P;  //calculating time required
disp(t,"Time required in sec = ");  //displaying time required.