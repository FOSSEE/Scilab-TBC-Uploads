// Example 5.16, page no-316
clear
clc
f=100
d=300*10^-3
a=45
a_rad=45*%pi/180
v=f*d/(2*cos(a_rad))
printf(" Fluid Velocity V=%.1f m/sec",v)
