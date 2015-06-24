//ques18
clc
disp('Picards method');
x0=0;
y0=2;
z0=1;
syms x
function yy=f(x,y,z)
  yy=x+z;
endfunction

function yy=g(x,y,z)
  yy=x-y^2;
endfunction
disp('first approximation');
y1=y0+integ(f(x,y0,z0),x,x0,x);
disp('y1=');
disp(y1);
z1=z0+integ(g(x,y0,z0),x,x0,x);
disp('z1=');
disp(z1);

disp('second approximation');
y2=y0+integ(f(x,y1,z1),x,x0,x);
disp('y2=');
disp(y2);
z2=z0+integ(g(x,y1,z1),x,x0,x);
disp('z2=');
disp(z2);

disp('third approximation');
y3=y0+integ(f(x,y2,z2),x,x0,x);
disp('y3=');
disp(y3);
z3=z0+integ(g(x,y2,z2),x,x0,x);
disp('z3=');
disp(z3);
x=0.1;
disp('y(0.1)=');
disp(float(eval(y3)));
disp('z(0.1)=');
disp(float(eval(z3)));