//ramanujan's method
//example 2.21
//page 45
clc;clear;close;
deff('y=f(x)','1-((13/12)*x-(3/8)*x^2+(1/24)*x^3)');
a1=13/12,a2=-3/8,a3=1/24;
b1=1;
b2=a1;
b3=a1*b2+a2*b1;
b4=a1*b3+a2*b2+a3*b1;
b5=a1*b4+a2*b3+a3*b2;
b6=a1*b5+a2*b4+a3*b3;
b7=a1*b6+a2*b5+a3*b4;
b8=a1*b7+a2*b6+a3*b5;
b9=a1*b8+a2*b7+a3*b6;
printf('\n\n%f',b1/b2);
printf('\n%f',b2/b3);
printf('\n%f',b3/b4);
printf('\n%f',b4/b5);
printf('\n%f',b5/b6);
printf('\n%f',b6/b7);
printf('\n%f',b7/b8);
printf('\n%f',b8/b9);
printf('\n it appears as if the roots are converging at 2')