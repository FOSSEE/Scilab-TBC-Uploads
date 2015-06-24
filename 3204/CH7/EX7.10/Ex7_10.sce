// Initilization of variables
p=0.0125 // m // pitch of screw
d=0.1 //m // diameter of the screw
r=0.05 //m // radius of the screw
l=0.5 //m // length of the lever
W=50 //kN // load on the lever
mu=0.20 // coefficient of friction 
pie=3.14 //constant
// Calculations
theta=atand(p/(2*pie*r)) //degree // theta is the Helix angle
phi=atand(mu) // degree // phi is the angle of friction
// Taking the leverage due to handle into account,force F1 required is,
F1=(W*(tand(theta+phi)))*(r/l) //kN
// To lower the load
F2=(W*(tand(theta-phi)))*(r/l) //kN // -ve sign of F2 indicates force required is in opposite sense
E=(tand(theta)/tand(theta+phi))*100 // % // here E=eata=efficiency in %
// Results
clc
printf('The force required (i.e F1) to raise the weight is %f kN \n',F1)
printf('The force required (i.e F2) to lower the weight is %f kN \n',F2)
printf('The efficiency of the jack is %f percent \n',E)
