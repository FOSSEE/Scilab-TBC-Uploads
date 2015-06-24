clear;
clc;

r=0.5;
R=2.5;
Vga=60;
ea=4;
eb=2.5;
Vgb=50;

v=Vga*ea*r;

r1=v/(eb*Vgb);

V=v *((log(r1/r)/ea)+(log(R/r1)/eb));

mprintf("Maximum working voltage = %.2f kV", V);
