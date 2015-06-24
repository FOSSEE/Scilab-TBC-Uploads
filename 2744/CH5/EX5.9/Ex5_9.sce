clear;
clc;
D = 19.5;// inches
d = 18;// inches
l = 30;// feet
t1 = 3/4;// inch
rho1 = 450;// lb. per cub. foot
rho2 = 62.5;// lb. per cub. foot
A = 0.25*%pi*(D^2 - d^2);// sq. in
DW = rho1*l*A/144;// lb-wt
WW = rho2*0.25*%pi*(D-d)^2*l;// lb-wt
W = DW+WW;// lb-wt
BM_max = W*l*0.0004467202*12/8;// ton-inches
I_xx = (%pi/64)*(D^4 - d^4);// in^4
Z_xx = I_xx/(0.5*d+t1);// ton/in^2
f = BM_max/Z_xx;// ton/in^2
printf('The maximum stress f = %.3f ton/in^2',f);

//there is an error in the answer given in text book
