clc;
w=5*10^-3; // counter weight
a=30*10^-4; // area of cross section of plates
d=1*10^-2; // distance between two plates
g=9.81; // acceleration due to gravity
Eo=(10^-9/(36*%pi)); // vaccum permittivity
l1=8*10^-2; // horizontal distance between pivot and plates
l2=10*10^-2; // horizontal distance between pivot and counter weight
// for the bar to remain horizontal electrostatic force is given by
fe=(w*l2*g)/l1; 
v=sqrt((fe*2*d^2)/(Eo*a));
printf('Voltage applied between the plates is %f KV',v/1000);

