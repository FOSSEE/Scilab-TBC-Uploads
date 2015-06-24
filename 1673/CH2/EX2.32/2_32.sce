//newton raphson method
//example 2.32
//page 65
clc;clear;close;
deff('y=f(x,y)','y=3*y*x^2-10*x+7');
deff('x=g(y)','x=y^2-5*y+4');
hh=0.0001;
x0=0.5,y0=0.5;//initial values
f0=f(x0,y0);
g0=g(y0);
df_dx=(f(x0+hh,y0)-f(x0,y0))/hh;
df_dy=(f(x0,y0+hh)-f(x0,y0))/hh;
dg_dx=(g(y0)-g(y0))/hh;
dg_dy=(g(y0+hh)-g(y0))/hh;
D1=determ([df_dx,df_dy;dg_dx,dg_dy]);
h=determ([-f0,df_dy;-g0,dg_dy])/D1;
k=determ([df_dx,-f0;dg_dx,-g0])/D1;
x1=x0+h;
y1=y0+k;
f0=f(x1,y1);
g0=g(y1);
df_dx=(f(x1+hh,y1)-f(x1,y1))/hh;
df_dy=(f(x1,y1+hh)-f(x1,y1))/hh;
dg_dx=(g(y1)-g(y1))/hh;
dg_dy=(g(y1+hh)-g(y1))/hh;
D2=determ([df_dx,df_dy;dg_dx,dg_dy]);
h=determ([-f0,df_dy;-g0,dg_dy])/D2;
k=determ([df_dx,-f0;dg_dx,-g0])/D2;
x2=x1+h;
y2=y1+k;
printf(' the roots of the equation are x2=%f and y2=%f ',x2,y2);
