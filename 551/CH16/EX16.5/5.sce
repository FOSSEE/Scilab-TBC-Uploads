clc
a=40*%pi/180; //Mach angle in radians
y=1.4;
R=287; //J/kg K
T=288; //K

C=sqrt(y*R*T);

V=C/sin(a);
disp("Velocity of bullet =")
disp(V)
disp("m/s")