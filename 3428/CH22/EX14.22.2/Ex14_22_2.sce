//Section-14,Example-1,Page no.-PC.50
//Calculate surface tension of liquid.
clc;
//surface tension(y)=(r*h*d*g)/(2*cosA)
r=1*10^-4            //m
h=8*10^-2          //m
d=0.9*10^3                 //kg/m^3
g=9.8                 //ms^-1
A=0                 //degree
y=(r*h*d*g)/(2*cos(A))
disp(y,'Surface tension(N/m)')
