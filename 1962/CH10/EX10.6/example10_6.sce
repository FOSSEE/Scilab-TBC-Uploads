
//example 10.6
//page 380
clc; funcprot(0);
//initialisation of variable
z=0.5;
S=0.0008;
n=0.025;//manning's constant
Q=15;//flow rate
g=9.81;
//part1
//solving for y
deff('y=f(x)','y=(4+0.5*x)/0.025*x*((4+0.5*x)*x/(4+2.236*x))^(2/3)*0.0008^0.5-15');
[x,v,info]=fsolve(1,f);
disp(x,"normal depth of water(ft)=");
clear
//part2
z=0.5;
S=0.0008;
n=0.025;//manning's constant
Q=15;//flow rate
g=9.81;
b=4;
y=2.22//depth of water
A=(b+z*y)*y;
T=b+2*z*y;
D=A/T;
V=Q/A;
F=V/sqroot(g*D);
disp(F,"Froude Number");
//part3
deff('y=f(x)','y=(4+0.5*x)*x*((4+0.5*x)*x*9.81/(4+1*x))^(1/2)-15');
[x,v,info]=fsolve(1,f);
disp(x,"critical depth of water(ft)=");
clear
