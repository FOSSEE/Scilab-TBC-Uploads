clear;
clc;
l = 20;//feet
W = 500;// lb per foot run
c = 750;// lb/in^2
t = 18000;// lb/in^2
m = 15;
BM_max = W*l*l*12/8 ;// lb-inches
//by making the effective deapth d twice the width b
d = (BM_max/(126*0.5))^(1/3);//inches
b = 0.5*d;//inches
//necessary reinforcement is 0.8% of concrete section
A_t = 0.008*b*d;// in^2
printf('d = %.2f inches\n b = %.2f inches',d,b);
printf('\n A_t = %.3f in^2',A_t);

