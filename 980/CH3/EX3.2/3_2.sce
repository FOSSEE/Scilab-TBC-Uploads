clc;
clear;
format('v',6);
disp("x=t,y=t,z=t","the parametric equation of straight line is","from the given points");
phi=1;                   //by inspecton
d=[1 1 1];               //where d=dr/dt
mod_d=sqrt(d(1)^2+d(2)^2+d(3)^2);
L=integrate('phi*mod_d','t',0,1);
disp(L,"required length=");
