//Problem 9.03: A conductor moves with a velocity of 15 m/s at an angle of (a) 90°, (b) 60° and (c) 30° to a magnetic field produced between two square-faced poles of side length 2 cm. If the flux leaving a pole face is 5 μWb, find the magnitude of the induced e.m.f. in each case.

//initializing the variables:
l = 0.02; // in m
b = 0.02; // in m
v = 15; // in m/s
R = 20; // in ohms
Phi = 5E-6; // in Wb
u0 = 4*%pi*1E-7;
a1 = 90; // in degrees
a2 = 60; // in degrees
a3 = 30; // in degrees

//calculation:
A = l*b
B = Phi/A
E90 = B*l*v*sin(a1*%pi/180)
E60 = B*l*v*sin(a2*%pi/180)
E30 = B*l*v*sin(a3*%pi/180)

printf("\n\nResult\n\n")
printf("\n Induced e.m.f. at angles 90°, 60°, 30° are %.2E V, %.2E V, %.3E V respectively\n",E90,E60,E30)