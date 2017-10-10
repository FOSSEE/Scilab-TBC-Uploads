clc;
clear all;
disp("1-D heat flow")
disp("Fourier''s equation: q = -k*dt/dx")
disp("k=k0*(1+at+bt^2)")
disp("q = k0*(1+at+bt^2)*dt/dx")
disp("q.dx = k0*(1+at+bt^2)*dt")
disp("integrating above equation within limits t1 to t2")
disp("the required expression is, q = -k*(t2-t1)*(1+a*(t1+t2)/2+b*(t1^2+t2^2+t1*t2)/3)/L")

