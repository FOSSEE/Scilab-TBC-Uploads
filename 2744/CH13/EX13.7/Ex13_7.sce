clear;
clc;
l = 12;//feet
w = 150;// lb per sq.foot
//Live load
LL = w*l;//lb-wt
//Dead Load assuming the slab thickness to be 6 inches
t = 6;//inches
DL = t*l*12;//lb-wt
//total load
W = LL+DL;//lb-wt
M = W*l*12/10;//lb-inches
d = sqrt(M/(12*126));
printf('d = %.3f inches',d);
//With about an  inch to cover the slab will be 6 inch thick
A_t = 0.8*l*d/100;// in^2
//using 1/2 inch rods 
d1 = 1/2;//inches
A1 = 0.25*%pi*(d1)^2;//in^2 
r1 = A1*l/A_t;//inches
printf('\n Per foot width of slab, A_t = %.4f in^2',A_t);
printf('\n Using %.2f inch rods, spacing centre to centre will be %.3f inches',d1,r1);
//there are minute calculation errors in the answer given in textbook.
