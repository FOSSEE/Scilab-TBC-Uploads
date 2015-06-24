//relative error
//example 1.11
//page 13
clc;clear;close;
x=1;y=1;z=1;
u=(5*x*y^3)/z^3;
dx=0.001;dy=0.001;dz=0.001;
u_max=((5*y^2)/z^3)*dx+((10*x*y)/z^3)*dy+((15*x*y^2)/z^4)*dz;
r_err=u_max/u;
printf(' the relative error is :%f',r_err);
