//Finding of Power Developed ,Force Exerted
//Given
d=0.13;
a=15;
H=400;
Cv=0.97;
b=0.45;
g=9.81;
rho=1000;
//To Find
A=(%pi/4)*d^2;
u=b*sqrt(2*g*H);
V=0.97*sqrt(2*g*H);
Vr1=0.8*(V-u);
Vw1=u-(Vr1*cos(%pi/15));
Fx=rho*A*V*(V-Vw1);
P=(Fx*u)/1000;
disp("Force Exerted ="+string(Fx)+" Newton");
disp("Power developed ="+string(P)+" Kilo Watts");
