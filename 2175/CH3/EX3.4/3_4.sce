clc;
h1=3017;//kJ/kg
v1=0.02453;//m^3/kg
p1=100;//bar
u1=h1-p1*v1*10^5/1000;
ug=2602;//kJ/kg
u2=ug;
W=u2-u1;
disp("work done by system is :");
disp("kJ/kg",-W)
