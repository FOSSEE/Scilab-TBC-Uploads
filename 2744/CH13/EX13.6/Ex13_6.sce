clear;
clc;
W = 180;// lb per sq.foot
l = 10;// feet
b = 12;//inches
c = 750;// lb/in^2
m = 15;
M = W*l*l*12/8;//lb-inches
d_new = sqrt(M/(126*b));//inches
A_t = 0.8*b*d_new/100;//in^2
//using 3/8 inch rods 
d1 = 3/8;//inches
A1 = 0.25*%pi*(d1)^2;//in^2 
r1 = A1*b/A_t;//inch
//using 1/2 inch rods 
d2 = 1/2;//inches
A2 = 0.25*%pi*(d2)^2;//in^2 
r2 = A2*b/A_t;//inches
printf('d = %.3f inches',d_new);
printf('\n A_t = %.3f in^2',A_t);
printf('\n Using %.3f inch rods, spacing centre to centre will be %.2f inches',d1,r1);
printf('\n Using %.2f inch rods, spacing centre to centre will be %.1f inches',d2,r2);
//there are round-off errors in the answer given in textbook
