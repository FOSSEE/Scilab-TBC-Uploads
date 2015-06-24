//signals and systems
//Unilateral  Laplace Transform: transfer function
//example 4.16
s = %s;
syms t s;
y1 =laplace('24*%e^(-3*t)+48*%e^(-4*t)',t,s);
disp(y1)
y2 =laplace('16*%e^(-3*t)-12*%e^(-4*t)',t,s);
disp(y2)
