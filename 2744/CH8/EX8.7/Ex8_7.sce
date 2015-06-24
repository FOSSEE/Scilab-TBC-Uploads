clear;
clc;
h = 60;//feet
rho = 130;// lb. per cubic foot
D = 12;//feet
d = 5;//feet
P_h = 24;// lb. per sq. foot
p_0 = rho*h;// lb-ft^2
P = P_h*D*h;// lb-wt
M = P*h/2;// lb-feet
Z = %pi*(D^4 - d^4)/(32*D);//lb-ft^3
p_b = M/Z;// lb/ft^2
p_max = p_0 + p_b;// lb/ft^2
p_min = p_0 - p_b;// lb/ft^2
printf('p_max = %d lb/ft^2., compressive\n p_min = %d lb/ft^2., compressive',p_max,p_min);

//there is an error in the answer given in text book
