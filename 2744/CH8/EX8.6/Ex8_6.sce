clear;
clc;
h = 80;// feet
p = 28;// lb. per sq.foot
rho = 126;// lb. per cubic foot
p_0 = rho*h/2240;// tons-ft^2
p_max = 7;// tons/ft^2
d = 4;// feet
p_b = p_max - p_0;// tons/ft^2
D = sqrt(3*p*h^2 /(2*p_b*2240) +sqrt(d^4 + (3*p*h^2 /(2*p_b*2240))^2));// feet
t = 0.5*(D-d);// feet
printf('The necessary thickness is, t = %d feet',round(t));
