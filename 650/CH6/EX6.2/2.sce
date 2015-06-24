clc;
x=0.86; // m
g=9.8; // m/s
y=0.96; // m
H=0.2; // m


v_act=x*sqrt(g/2/y);

v=sqrt(2*g*H);

Cv=v_act/v;
disp("The coefficient of velocity for the orifice is found to be")
disp(Cv);