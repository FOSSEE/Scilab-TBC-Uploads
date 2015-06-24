clear;
clc;
h = 20;// feet
b = 4;// feet
d = 12;// feet
h1 = 18;// feet
//density of masonary
rho_m = 140;// lb-ft^3
//density of water
rho_w = 62.5;// lb-ft^3
W = rho_m*0.5*(b+d)*h;// lb-wt
//to locate its line of action divide the dam section into a rectangle and a triangle 
x1 = b/2;//feet
a1 = b*h;// sq. feet
a2 = 0.5*(d-b)*h;// sq. feet
x2 = b+((d-b)/3);// feet
x_bar = (a1*x1+a2*x2)/(a1+a2);// feet
P = rho_w*h1^2/2;// lb-wt
z = x_bar + (h1/3)*(P/W);// feet
e = z - d/2;// feet
p_0 = W/d;// lb/ft^2
M = W*e;// lb-feet
Z = 1*d^2*1/6;// ft^3
p_b = M/Z;// lb-ft^2
p_max = p_0 + p_b;// lb-ft^2
p_min = p_0 - p_b;// lb-ft^2
printf('p_max = %.1f lb/ft^2., compressive at B.\n p_min = %.1f lb/ft^2., compressive at A.',p_max,p_min);

//there is an error in the answer given in text book
