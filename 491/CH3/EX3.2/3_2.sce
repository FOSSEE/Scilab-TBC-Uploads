T = 1200 ; // allowable torque in N-m
t = 40e06 ; // allowable shear stress in Pa
f = (0.75*%pi)/180 ; // allowable rate of twist in rad/meter
G = 78e09; // modulus of elasticity
// Part (a) : Solid shaft
d0 = ((16*T)/(%pi*t))^(1/3)
Ip = T/(G*f) ; // polar moment of inertia
d01 = ((32*Ip)/(%pi))^(1/4); // from rate of twist definition
disp("m",d0,"The required diameter of the solid shaft is ")
// Part (b) : hollow shaft
d2 = (T/(0.1159*t))^(1/3) ; // Diamater of hollow shaft in meter
// The above equation comes from solving the following four equation 
// t1 = 0.1*d2 ; thickness of shaft
// d1 = d2-(2*t1) ; // diameter of inner radius
// Ip = (%pi/32)*((d2^4)-(d1^4)); // Polar moment of inertia
// r = d2/2
// t = (T*r)/Ip ; // allowable shear stress
d2_ = (T/(0.05796*G*f))^(1/4) ; // Another value of d2 by definition of theta(allow), f = T/(G*Ip)
d1 = 0.8*d2_ ; // because rate of twist governs the design
disp("m",d2,"The required diameter of the hollow shaft is ")
// Part (c) : Ratio of diameter and weight
r1 = d2_/d01 ; // diameter ratio
r2 = ((d2_^2)-(d1^2))/(d01^2) ; // Weight Ratio
disp(r1,"Ratio of the diameter of the hollow and solid shaft is")
disp(r2,"Ratio of the weight of the hollow and solid shaft is")




