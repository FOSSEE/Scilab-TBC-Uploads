clear;
clc;

//page no. 420

b = 6;//in
d = 3;//in
p = 20;//psi
del_p = 6;//in. of mercury
p_bar = 14.70;//psia
T = 60;//degreeF

k = (p + p_bar - b*(p_bar/29.92))/(p+p_bar);
gam1 = (p+p_bar)*144/53.3 /(T+460);
A2 = 0.0491;//sqft
Y = 0.949;
Cv = 0.98;
G = Y*Cv*A2*gam1*sqrt(2*32.2*b*10*A2*144/gam1) /(sqrt(1-0.25^2));
Cv_true = 0.981;
G_true = G*Cv_true/Cv;

printf('G = %.2f lb/sec',G);
