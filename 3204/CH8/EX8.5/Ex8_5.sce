// Initilization of variables
W=2000 //N // Load to be raised
l=0.70 //m // length of the handle
d=0.05 //m // diameter of the screw
p=0.01 //m // pitch of the screw
mu=0.15 // coefficient of friction at the screw thread
pie=3.14 //constant
E=1 // efficiency
// Calculations
phi=atand(mu) //degree
theta=atand(p/(pie*d)) //degree // where theta is the Helix angle
// Force required at the circumference of the screw is,
P=W*tand(theta+phi) // N //
// Force required at the end of the handle is,
F=(P*(d/2))/l //N 
// Force required (Ideal case)
V.R=2*pie*l/p
M.A=E*V.R // from formulae E=M.A/V,R
P_ideal=W/M.A //N // From formulae, M.A=W/P
// Results
clc
printf('The force required at the end of the handle is %f N \n',F)
printf('The force required if the screw jack is considered to be an ideal machine is %f N \n',P_ideal)
