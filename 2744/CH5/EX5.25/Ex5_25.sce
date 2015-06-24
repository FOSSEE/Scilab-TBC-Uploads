clear;
clc;
function [p1, p2,theta] = func(p,q)
    p1 = 0.5*p + sqrt(q^2 + 0.25*p^2);
    p2 = 0.5*p - sqrt(q^2 + 0.25*p^2);
    theta = 0.5*atan(2*q/p) * 180/%pi;
endfunction
b = 5;// inches
d = 12;// inches
F = 4800 ;// lb-wt
M = 192000;// lb-inches
I = (1/12)*b*d^3;// in^4

//At 6 inches above the N.A
p6 = M*6/I ; // lb/in^2
q6 = 0;
[p1_6,p2_6,theta6] = func(p6,q6);

//At 4 inches above the N.A
p4 = M*4/I;// lb/in^2
q4 = (F/(I*b))*b*(0.5*d-4)*b;
[p1_4,p2_4,theta4] = func(p4,q4);

//At 2 inches above the N.A
p2 = M*2/I;// lb/in^2
q2 = (F/(I*b))*b*(0.5*d-2)*4;
[p1_2,p2_2,theta2] = func(p2,q2);

//At the N.A
p = 0;//
q = F*b*0.5^3*d^2/(I*b);// lb/in^2
p1 = q;// lb/in^2
p2 = -q;// lb/in^2

printf('At 6 inches above the N.A, p1 = %d lb/in^2., compressive, and p2 = %d ',p1_6,p2_6);
printf('\n At 4 inches above the N.A, p1 = %.1f lb/in^2., compressive, and p2 = %.2f lb/in^2 .,tensile\n theta1 = %.2f degrees \n theta2 = %.2f degrees',p1_4,-p2_4,theta4,theta4+90);
printf('\n At 2 inches above the N.A, p1 = %.2f lb/in^2., compressive, and p2 = %.2f lb/in^2.,tensile\n theta1 = %.2f degrees \n theta2 = %.2f degrees',p1_2,-p2_2,theta2,theta2+90);
printf('\n At the N.A, p1 = %d lb/in^2., compressive, and p2 = %d.,tensile ',p1,-p2);

//there is an error in the answer given in text book
