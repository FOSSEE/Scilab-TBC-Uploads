clc;
clear all;
disp("temperature at interfaces")
L=0.16;//m thickness of slab
qg=1.2*10^(6);// W/m^3
k=180;// W/(m*C)
t1=120;// degree C
t2=t1;
tw=t1;
A=1;//m^2

x=L/2;
tmp=(qg/(2*k))*(L-x)*x+tw;
Qmp=qg*A*x;
gradTmp=-Qmp/(A*k);
disp("degree C",tmp,"temperature at mid plane tmp = ")
disp("W/m^2",Qmp,"heat flow rate mid plane Qmp = ")
disp("C/m",gradTmp,"temperature gradient at the mid plane  = ")

x=L/4;
t14=qg*(L-x)*x/(2*k)+tw;
Q14=qg*A*x;
gradT14=-Q14/(A*k);
disp("degree C",t14,"temperature at x=L/4 = ")
disp("W/m^2",Q14,"heat flow rate at x=L/4  Qmp = ")
disp("C/m",gradT14,"temperature gradient at x=L/4  = ")

x=3*L/4;
t34=qg*(L-x)*x/(2*k)+tw;
disp("degree C",t34,"temperature at x=3L/4  = ")


