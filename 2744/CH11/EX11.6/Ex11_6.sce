clear;
clc;
t = 1/2;// inches
a = 1/2;// inches
P = 42;// tons
d = 3/4;// inches
f_t = 7.5;// tons/in^2
f_s = 6;// tons/in^2
f_b = 12;// tons/in^2
P_s = 2*0.25*%pi*d^2 *f_s;// tons
P_b = d*t*f_b;// tons
n = P/min(P_s,P_b);
n = round(n+1);
b1 = P/(t*f_t) + d;// inches
b = round(b1);
e = (b-d)/b;// efficiency
f_s = (P/n)/(2*0.25*%pi*d^2) ;// tons/in^2
f_b = (P/n)/(d*t);// tons/in^2
f1 = P/(a*(b-d));// tons/in^2
f2 = (P-(P/n))/((b-2*d)*t);// tons/in^2
f3 = (P-(3*P/n))/((b-3*d)*t);// tons/in^2
f4 = (P-(6*P/n))/((b-4*d)*t);// tons/in^2
printf('The number of rivets required, n = %d',n);
printf('\n The width of the flat required, b = %.2f inches, say %d inches',b1,b);
printf('\n The efficiency of the joint = %.2f percentage',e*100);
printf('\n The actual stresses induce in the rivet are, f_s = %.2f tons/in^2\n            f_b = %.2f tons/in^2',f_s,f_b);
printf('\n The tensile stress at section 11, f1 = %.3f rons/in^2',f1);
printf('\n The tensile stress at section 22, f2 = %.3f rons/in^2',f2);
printf('\n The tensile stress at section 33, f3 = %.3f rons/in^2',f3);
printf('\n The tensile stress at section 44, f4 = %.3f rons/in^2',f4);
