//ques8
clc
disp('solution of the given linear differential equation is given by : ');
m=poly(0,'m');
f=m^3+4*m;
disp('using 1/f(D)exp(ax)=x/f1(D)*exp(ax) if f(m)=0');
disp('y=x*1/(3D^2+4)*sin2x');
disp('Using the identity 1/f(D^2)*sin(ax+b)[or cos(ax+b)]=1/f(-a^2)*sin(ax+b)[or cos(ax+b)] this equation can be reduced to ');
disp('y=-x/8*sin2x');
disp('y=');
y=-x*sin(2*x)/8;
disp(y);