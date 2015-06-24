clear;
clc;
//xt=(.075+1.5x)*(.15)/(.075+1.5x+.15);
ssc=200;
xpu=.15;
ifl=20*10^(6)/(sqrt(3)*11000);
vp=11000/sqrt(3);
x=xpu*vp/ifl;
printf("The ohmic reactance of each reactor is: %.2f ohm",x);

//x1=.0225/(.3+x);
//x2=x3=.15x/(.3+x);
//xt=.15(.5x+.075)/(.15+.5x+.075);
xpu=.45;
x=xpu*vp/ifl;
printf("\nThe ohmic reactance of each reactor is: %.2f ohm",x);







