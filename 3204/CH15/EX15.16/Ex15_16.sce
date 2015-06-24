// Initilization of variables
Q=20 // N // Weight of the governor device
W=10 // N // Weight of the fly balls
theta=30 // degree // angle between the vertical shaft and the axis AB
l=0.2 // m // length of the shaft
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Consider the respective F.B.D
// Radius of the circle is given as,
r=Q*sind(theta)*(10^-2) // m 
// Solving eq'n 1 & 2 for v. The eq'n for v is given as,
v=sqrt(((W*l*0.5)+(0.05*Q))/((W*0.2*sqrt(3))/(2*g*r))) // m/s
// But, v=r*omega=2*pi*N*r/60. From this eq'n we get N as,
N=(v*60)/(2*%pi*r) // r.p.m.
// Results
clc
printf('The speed of the fly-balls is %f r.p.m \n',N)
