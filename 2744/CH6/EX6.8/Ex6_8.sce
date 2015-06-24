clear;
clc;
d = 12;// inches
h = 5;// inches
l = 20;// feet
E = 13000; //tons/in^2
I_xx = 220;// in^4
W = 4;// tons
W1 = 3;// tons
a = 15;// feet
b = l-a;// feet
a1 = 16;// feet 
b1 = l-a1;// feet
K1 = (-2*W1*b1*l)/(W1*b1-W*b);
K2 = (W*b*a^2 + 2*a*W*b^2 + 2*W1*b1*l^2 - W1*b1*a1^2 -2*W1*a1*b1^2 +W1*b1*l^2)/(3*(W1*b1 - W*b));
x = -0.5*K1 + sqrt(-K2 + 0.25*K1^2);// feet
x1 = l-x;// feet
y_max = W*b*x*1728*(a^2 +2*a*b -x^2)/(6*E*I_xx*l) + W1*b1*x1*1728*(a1^2 +2*a1*b1 -x1^2)/(6*E*I_xx*l);// inches
printf('The position of the maximum deflection is, x = %.2f feet.',x);
printf('\n And the maximum deflection is, y_max = %.4f inches.',y_max);
