clc
m=1; //kg
p1=120*10^5; //N/m^2
t1=400; //0C
p2=38; //bar
h1=3051.3; //kJ/kg
v1=0.02108; //m^3/kg
u1=h1-p1*v1/10^3; //kJ/kg
u2=2602; //kJ/kg
disp("WOrk done = ")
W=u1-u2; 
disp(W)
disp("kJ/kg")