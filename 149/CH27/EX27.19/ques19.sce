//ques19
clc
syms x
function yy=f(x,y,z)
  yy=z;
endfunction
function yy=g(x,y,z)
  yy=x*y^2-y^2;
endfunction
x0=0;
y0=1;
z0=0;
h=0.2;
disp('using k1 k2.. for f and l1 l2...for g runga kutta formulae becomes ');
h=0.2;
k1=h*f(x0,y0,z0);
l1=h*g(x0,y0,z0);
k2=h*f(x0+1/2*h,y0+1/2*k1,z0+1/2*l1);
l2=h*g(x0+1/2*h,y0+1/2*k1,z0+1/2*l1);
k3=h*f(x0+1/2*h,y0+1/2*k2,z0+1/2*l2);
l3=h*g(x0+1/2*h,y0+1/2*k2,z0+1/2*l2);
k4=h*f(x0+h,y0+k3,z0+l3);
l4=h*g(x0+h,y0+k3,z0+l3);
k=1/6*(k1+2*k2+2*k3+k4);
l=1/6*(l1+2*l2+2*l3+2*l4);
//at x=0.2
x=0.2;
y=y0+k;
y1=z0+l;
disp('y=');
disp(float(y));
disp('y1=');
disp(float(y1));

y
