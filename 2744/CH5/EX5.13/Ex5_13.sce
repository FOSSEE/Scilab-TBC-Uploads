clear;
clc;
D = 8;// inches
B = 3;// inches
t1 = 1/2;// inch
t2 = 3/8;// inch
b = B-t2;// inches
d = D-2*t1;// inches
a1 = t1*B;// in^2
x1 = 0.5*B;// inches
a2 = t2*(D-2*t1);// in^2
x2 = 0.5*t2;// inches
a3 = B*t1;// in^2
x3 = 0.5*B;// inches
a = a1+a2+a3;// in^2
P = (a1*x1+a2*x2+a3*x3)/(a1+a2+a3);// inches
I_xx = (1/12)*(B*D^3 - b*d^3);// in^4
I_AB = (1/3)*t1*B^3 + (1/3)*d*t2^3 + (1/3)*t1*B^3;// in^4
I_yy = I_AB - a*P^2;// in^4
printf('Position of the c.g of the section P = %.3f inches',P);
printf('\n I_xx = %.2f in^4\n I_yy = %.3f in^4',I_xx,I_yy);
//there is an error in the answer given in text book
