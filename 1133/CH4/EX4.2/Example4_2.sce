//Example 4.2
clc
disp("The given values are, R = 4.7 k-ohm and C = 0.47 uF")
f=1/(2*%pi*sqrt(6)*(4.7*10^3)*(0.47*10^-6))  // in Hz
format(7)
disp(f,"  f(in Hz) = 1 / 2*pi*sqrt(6)*R*C =")
