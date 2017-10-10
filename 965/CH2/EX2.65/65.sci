clc;
clear all;
disp("expression for rate")
disp("k = k0*(1+a*t+b*t^2)")
disp("considering steady state equation through hollow sphere r= r and thickness dr/dt, ")
disp("Q = -k*A*dt/dr = -k*4*%pi*r^2*dt/dr =-k0*(1+a*t+b*t^2)*4*%pi*r^2*dt/dr")
disp("thus, Q/4%pi * dr/r^2=-k0*(1+a*t+b*t^2)*dt ")
disp("integrating the above equation in range r1 to r2 and t1 to t2 respectively, we get")
disp("Q = (4*pi*r1*r2/(r1-r2))*k0*(t1-t2)*(1+a(t1+t2)/2)+b*(t1^2+t2^2+t2*t2)/3)")

