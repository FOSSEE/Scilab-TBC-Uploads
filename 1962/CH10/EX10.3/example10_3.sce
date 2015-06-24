
//example 10.3
//page 367
clc; funcprot(0);
//initialisation of variable
Q=16.1;
b=3;
z=1;
S=0.0009;
//solving for y;
deff('y=f(x)','y=(3+x)/0.012*x*((3+x)*x/(3+2.828*x))^(2/3)*0.0009^0.5-16.1');
[x,v,info]=fsolve(1,f);
disp(x,"height of water(ft)=");
clear
