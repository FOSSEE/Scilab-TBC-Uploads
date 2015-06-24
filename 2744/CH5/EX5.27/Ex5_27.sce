clear;
clc;
W = 10;// tons
l = 16;// feet
f = 15/2;// tons/in^2
//section modulus required
SM = W*l*12/(8*f);// in^3
//for this section modulus 
l1 = 12;// inches
b1 = 5;// inches
t1 = 0.55;// inches
t2 = 0.35;// inches
I_xx = 220;// in^4
F_max = 5;// tons
q_max = (F_max/(I_xx*t2))*(F_max*t1*(0.5*l1-0.5*t1) + t2*0.5*(0.5*l1-t1)^2);// tons/in^2
printf('The maximum intensity of shear stress is q_max = %.2f tons/in^2',q_max);
