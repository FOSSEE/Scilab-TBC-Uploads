clc

p1=8*10^5; // N/m^2
p2=5*10^5; // N/m^2
f=0.006;
l=145; // m
m=0.32; // kg/s
R=287; // J/kg.K
T=288; // K
y=1.4;

d=(4*f*l*m^2*R*T/(%pi/4)^2/(p1^2-p2^2))^(1/5);
disp("(a) Diameter of pipe =")
disp(d)
disp("m")

rho=p1/R/T;
A=%pi/4*d^2;
u=m/rho/A;

a=sqrt(y*R*T);

M1=u/a;
M2=p1/p2*M1;

disp("(b) Entry and Exit Mach number =")

disp("Entry Mach number =")
disp(M1)

disp("Exit Mach number =")
disp(M2)

disp("(c) Determine the pressure halfway along the pipe.")
px=sqrt((p1^2+p2^2)/2);
disp("Pressure =")
disp(px)
disp("N/m^2")