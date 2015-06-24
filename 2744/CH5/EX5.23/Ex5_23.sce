clear;
clc;
b = 14;// inches
d = 6;// inches
t1 = 0.7;// inch
t2 = 0.4;// inch
F = 20;// tons
I = (1/12)*(d*b^3 - (d-t2)*(b-2*t1)^3);// in^4
q = F*t1*0.5*(0.5*b + (0.5*b-t1))/I;// ton/in^2
q_max = (F/(I*t2))*(d*t1*0.5*(0.5*b + (0.5*b-t1)) + t2*(0.5*b-t1)*(0.5*b-t1)*0.5);// tons/in^2
printf('The maximum intensity of shear stress is q_max = %.2f tons/in^2',q_max);
