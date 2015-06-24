 clear;
clc;

//page no. 107

p = 14;//psia
gam = 62;//lb/cuft
l1 = 35;// ft
l2 = 10;// ft
d = 6;//in

p_v = 2.2*gam;
p_B = p*144;
k_c = l1-l2+(p_B/gam)-(p_v/gam);
K6 = l1;
d_c = d*(K6/k_c)^0.25;

printf('d = %.2f in',d_c);
