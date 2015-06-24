//ramanujan's method
//example 2.22
//page 46
clc;clear;close;
deff('y=f(x)','x+x^2+x^3/2+x^4/6+x^5/24');
a1=1,a2=1,a3=1/2,a4=1/6,a5=1/24;
b1=1;
b2=a2;
b3=a1*b2+a2*b1;
b4=a1*b3+a2*b2+a3*b1;
b5=a1*b4+a2*b3+a3*b2;
b6=a1*b5+a2*b4+a3*b3;
printf('\n%f',b1/b2);
printf('\n%f',b2/b3);
printf('\n%f',b3/b4);
printf('\n%f',b4/b5);
printf('\n%f',b5/b6);
printf('\n it appears as if the roots are converging at around %f',b5/b6);