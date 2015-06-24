clear;
clc;
b = 6;// inches
d = 12;// inches
t1 = 7/8;// inch
t2 = 1/2;// inch
I_xx = (1/12)*(b*d^3 - (b-t2)*(d-2*t1)^3);// in^4
Z1 = I_xx/b;// in ^3
A = 2*b*t1 + 0.5*(d-2*t1);// in^2
b = sqrt(A/2);// inches
d = 2*b;// inches
Z2 = (1/6)*b*d^2;// in^3
k = Z1/Z2 ;
printf('The ratio of strengths Z1/Z2 = %.2f ',k);

//there is an error in the answer given in text book
