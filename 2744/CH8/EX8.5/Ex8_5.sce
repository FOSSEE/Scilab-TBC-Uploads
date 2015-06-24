clear;
clc;
h = 20;// feet
b = 12;// feet
d = 4;// feet
p = 30;// lb. per sq.foot
rho = 140;// lb. per cubic foot
p_0 = rho*h;// lb-ft^2
P = p*b*h;// lb-wt
M = P*h/2;//lb-ft
Z = b*d^2/6;// ft^3
p_b = M/Z;// lb/ft^2
p_max = p_0 + p_b;// lb/ft^2
p_min = p_0 - p_b;// lb/ft^2
printf('p_max = %d lb/ft^2., compressive\n p_min = %d lb/ft^2., compressive',p_max,p_min);
