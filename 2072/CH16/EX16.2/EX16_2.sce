//Example 16.2
clc
disp("solution a")
E=8*10^4//in V/m
d=0.5//in m
delta_V=-E*d
disp(delta_V,"Electric potential from A to B in V=")
disp("solution b")
q=1.6*10^-19//in C
delta_PE=q*delta_V
disp(delta_PE,"Change in electric potential in joules=")
m_p=1.67*10^-27//in kg
vf=sqrt((2*-delta_PE)/m_p)
disp(vf,"velocity in m/s=")
