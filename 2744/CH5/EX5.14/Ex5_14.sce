clear;
clc;
b = 6;// inches
d = 4;// inches
t = 5/8;// inch
a1 = d*t;// in^2
y1 = d/2;// inches
a2 = (b-t)*t;// in^2
y2 = t/2;// inch
a = a1+a2;// in^2
J = (a1*y1+a2*y2)/(a1+a2);// inches
I_AB = (1/3)*t*d^3 + (1/3)*(b-t)*t^3;// in^4
I_xx = I_AB - a*J^2;// in^4
I_yy = (1/12)*t*b^3 + (1/12)*(d-t)*t^3;// in^4
printf('The position of the c.g is J = %.2f inches',J);
printf('\n I_xx = %.2f in^4\n I_yy = %.2f in^4',I_xx,I_yy);


//14(a)
H = 18;// feet
l = 10;// feet
w = 3/2;// cwt/ per .sq. foot
y_c = 2.97;// inches
y_t = 1.03;// inches
W = (3/40)*(w*l);// tons
BM_max = W*l*12/8;// ton-inches
M_r = BM_max;// ton-inches
f_c = M_r*y_c/I_xx ;// tons/in^2
f_t = M_r*y_t/I_xx ;// tons/in^2
printf('\n\n Maximum stresses induced are f_c = %.2f tons/in^2\n f_t = %.2f tons/in^2',f_c,f_t);
