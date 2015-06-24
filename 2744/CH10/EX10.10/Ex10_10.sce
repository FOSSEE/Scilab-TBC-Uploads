clear;
clc;
d = 9;// inches
p = 5000/2240;// lb/in^2
f = 8;// tons/in^2
PR = 0.3;// Poisson's ratio
//(i) Maximum principal stress hypothesis:
k_limit1 = sqrt((f + p)/(f - p));//k_limit = r1/r2
r_limit1 = k_limit1*0.5*d;//inches
printf('The outer radius in case(i), r2 = %.3f inches',r_limit1);
//(ii) Maximum principal strain:
k_limit2 = sqrt(((f/p - PR)+1)/(f/p - PR -1));
r_limit2 = k_limit2*0.5*d;// inches
printf('\n The outer radius in case(ii), r2 = %.3f inches',r_limit2);
//(iii) Maximum shear stress:
k_limit3 = sqrt(f/(2*p) /((f/(2*p)) - 1));
r_limit3 = k_limit3*0.5*d;// inches
printf('\n The outer radius in case(iii), r2 = %.3f inches',r_limit3);
//(iv) Maximum strain energy
K1 = (f^2 /p^2)/(2*((f^2 /(2*p^2)) - (1+PR)));
K2 = K1^2;
K3 = ((f^2 /(2*p^2)) - (1-PR))/((f^2 /(2*p^2)) - (1+PR));
k_limit4 = sqrt(K1+sqrt(K2-K3));
r_limit4 = k_limit4*0.5*d;// inches
printf('\n The outer radius in case(iv), r2 = %.3f inches',r_limit4);

//there are calculation errors in the answer given in text book
