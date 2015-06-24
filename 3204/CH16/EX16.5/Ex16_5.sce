// Initilization of variables
W=50 // N // Weight suspended on spring
k=10 // N/cm // stiffness of the spring
x_2=15 // cm // measured extensions
h=10 // cm // height for position 2
// Calculations
// Consider the required F.B.D.
// POSITION 1: The force exerted by the spring is,
F_1=W // N
// Extension of spring from undeformed position is x_1,
x_1=F_1/k // cm
// POSITION 2: When pulled by 10 cm to the floor. P.E of weight is,
P.E_g=-W*h // N-cm // (P.E_g= P.E_gravity)
// P.E of the spring with respect to position 1
P.E_s=(1/2)*k*(x_2^2-x_1^2) // N-cm  // (P.E_s= P.E_ spring)
// Total P.E of the system with respect to position 1
P.E_t=P.E_g+P.E_s // N-cm // (P.E_t= P.E_total)
// Total energy of the system,
E_2=P.E_t // N-cm
// Total energy of the system in position 3 w.r.t position 1 is:
x=-sqrt(100) // cm
x=+sqrt(100) // cm
// Results
clc
printf('The potential energy of the system is %f N-cm \n',E_2)
printf('The maximum height above the floor that the weight W will attain after release is %f cm \n',x)
