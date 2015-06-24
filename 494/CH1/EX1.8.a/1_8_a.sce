d = 30; //inflated diameter of ballon in feet
W = 800; //weight of the balloon in lb
g = 32.2; //acceleration due to gravity
//part (a)
rho_0 = 0.002377; //density at zero altitude

//Assuming the balloon to be spherical, the Volume can be given as
V = 4/3*%pi*((d/2)^3);

//The Buoyancry force is given as
B = g*rho_0*V;

//The net upward force F is given as
F = B - W;

m = W/g; //Mass of the balloon

//Thus the upward acceleration of the ballon can be related to F as
a = F/m;

printf("\nRESULTS\n---------\nThe initial upward acceleration is:\n          a = %2.1f ft/s2",a)