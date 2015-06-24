clear;
clc;
b = 10;// inches
d = 8;// inches
t1 = 1;// inch
t2 = 0.6;// inch
M = 500;// ton-inches
F = 25;// tons
I = (1/12)*(d*b^3 - (d-t2)*d^3);// in^4

//At the top
p = M*b/(2*I);// tons/in^2
q = 0;
p1 = p;// tons/in^2
p2 = 0;
printf('At the top, principal stresses are \n p1 = %.2f tons/in^2\n p2 = %d tons/in^2',p1,p2);

//In the web, 4 inches from the N.A
p = M*d/(2*I);// tons/in^2
q = F*d*t1*0.5*(d+t1)/(I*t2);// tons/in^2
theta = 0.5*atan(2*q/p);
theta1 = theta*180/%pi;
theta2 = theta1+90;
p1 = 0.5*p + sqrt(q^2 + 0.25*p^2);// tons/in^2
p2 = 0.5*p - sqrt(q^2 + 0.25*p^2);// tons/in^2
printf('\n In the web, 4 inches from the N.A.:\n The principal stresse are p1 = %.2f tons/in^2.,compressive\n p2 = %.2f tons/in^2.,tensile\n theta1 = %.1f degrees\n theta2 = %.1f degrees',p1,-p2,theta1,theta2);

//At the N.A
p = 0;
q = (F/(I*t2))*(d*t1*0.5*(d+t1) + t2*0.5*d*2*t1);
p1 = q;// tons/in^2
p2 = -q;//tons/in^2
printf('\n The principal stresse across the diagonal are %.2f tons/in^2., compressive on one plane and %.2f tons/in^2., tensile on the other.',q,q);

//there is an error in the answer given in text book
