clear;
clc;
p = 1500;// lb/in^2
E = 30*10^6;// lb/in^2
f1_5 = 8318;// lb/in^2
f2_5 = 3187.5;// lb/in^2
alpha = 0.0000062;// per F
r3 = 6;// inches
del_r3 = r3*(f1_5+f2_5)/E;// inches
t = ((f1_5+f2_5)/E)/(alpha);// inches
printf('The minimum temperature to which outer tube should be heated before it can be slipped on, t = %.2f F',t);
