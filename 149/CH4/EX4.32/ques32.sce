//ques 32
disp('Equation of tangent');
syms x a y;
f=(a^(2/3)-x^(2/3))^(3/2);
s=diff(f,x);

Y1=s*(-x)+y;
X1=-y/s*x;
g=x-(Y1-s*(X1-x));
disp('Equation is g=0 where g is');
disp(g);

