//ques7
clc
disp('solution of the given linear differential equation is given by : ');
m=poly(0,'m');
f=m^3+1;
disp('Using the identity 1/f(D^2)*sin(ax+b)[or cos(ax+b)]=1/f(-a^2)*sin(ax+b)[or cos(ax+b)] this equation can be reduced to ');
disp('y=(4D+1)/65*cos(2x-1)');
y=(cos(2*x-1)+4*diff(cos(2*x-1),x))/65;
disp('y=');
disp(y);