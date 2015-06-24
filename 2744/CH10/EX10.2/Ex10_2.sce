clear;
clc;
l = 8;//feet
d = 3;// feet
t = 1/2;// inches
p = 200;// lb/in^2
E = 30*10^6;// lb/in^2
PR = 0.3;// poisson's ratio
f1 = p*d*12/(2*t);// lb/in^2
f2 = p*d*12/(4*t);// lb/in^2
f_s = 0.5*(f1-f2);// lb/in^2
e1 = (f1/E)-(PR*f2/E);// lb/in^2
e2 = (f2/E)-(PR*f1/E);// lb/in^2
del_d = e1*d*12;// inches
del_l = e2*l*12;// inches
del_V = (e2+2*e1)*0.25*%pi*(12*d)^2 * l*12;// cub. inches
printf('Maximum intensity of shear stress induced = %d lb/in^2',f_s);
printf('\n del_d = %.6f inches\n del_l = %.6f inches\n del_V = %.1f cub. inches',del_d,del_l,del_V);
