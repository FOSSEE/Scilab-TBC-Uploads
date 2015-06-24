//Section-14,Example-1,Page no.-PC.50
//Calculate surface tension of liquid.
clc;
//surface tension(y)=(r*h*d*g)/(2*cosA)
r=1*10^-4
h=8*10^-2
d=0.9*10^3
g=9.8
A=0
y=(r*h*d*g)/(2*cos(A))
disp(y,'Surface tension(N/m)')
