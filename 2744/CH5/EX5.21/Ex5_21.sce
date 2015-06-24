clear;
clc;
b1 = 12;// inches
d1 = 4;// inches
A = 9.21;// in^2
I_xx1 = 200.1;// in^4
P = 1.055;// inches
I_yy1 = 12.12;// in^4
I_xx = 2*I_xx1;
//for equal strength I_xx = I_yy
x = 2*(sqrt(((I_xx/2)-I_yy1)/A) - P);// in^4
printf('x = %.2f inches',x);

//answer is corrct only, but it is approximated in the text book.
