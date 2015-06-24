//ramanujan's method
//example 2.23
//page 47
clc;clear;close;
deff('y=f(x)','1-2*((3/2)*x+(1/4)*x^2-(1/48)*x^4+x^6/1440-x^8/80640)');
a1=3/2,a2=1/4,a3=0,a4=1/48,a5=0,a6=1/1440,a7=0,a8=-1/80640;
b1=1;
b2=a1;
b3=a1*b2+a2*b1;
b4=a1*b3+a2*b2+a3*b1;
b5=a1*b4+a2*b3+a3*b2;
b6=a1*b5+a2*b4+a3*b3;
b7=a1*b6+a2*b5+a3*b4;
b8=a1*b7+a2*b6+a3*b5;
b9=a1*b8+a2*b7+a3*b6;
printf('\n%f',b1/b2);
printf('\n%f',b2/b3);
printf('\n%f',b3/b4);
printf('\n%f',b4/b5);
printf('\n%f',b5/b6);
printf('\n%f',b6/b7);
printf('\n%f',b7/b8);
printf('\n it appears as if the roots are converging at around %f',b7/b8)