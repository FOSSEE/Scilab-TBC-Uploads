clear;
clc;
P = 80;// tons
p_max = 5;// tons/in^2
E = 13000;// tons/in^2
A = 38.38;// in^2
I_yy = 451.94;// in^4
y_c = 6;// inches
l = 20;// inches
k = sqrt(I_yy/A);// inches
Z_yy = I_yy/y_c;// in^3
p_0 = P/A;// tons/in^2
p_b = p_max-p_0;// tons/in^2
M_max = p_b*Z_yy;// ton-inches
e = M_max/(P*sec(0.5*l*12*sqrt(P/(E*I_yy))));//inches
printf('The maximum possible eccentricity, e = %.2f inches',e);
