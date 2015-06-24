clear;
clc;

xt=(.15+.1)*(.2)/(.15+.1+.2);
sb=25;
ssc=sb/xt;
printf("\n The short circuit MVA is: %.2f \n",ssc);
if=1/((%i)*xt);
ib=sb/(sqrt(3)*11000);
if=if*ib;
printf("\n The fault current in A is:");
disp(round(if*1000000));
if1=(.15+.1)*if/(.15+.1+.2);
printf("\n The fault current in A supplied by generator 1 is:");
disp(round(if1*1000000));
if2=if-if1;
printf("\n The fault current in A in reactor is:");
disp(round(if2*1000000));
xpu=.45;
vfl=6350;
ifl=1050;
x=xpu*vfl/ifl;
printf("\n The reactance of each reactor is: %.2f ohm",x);










