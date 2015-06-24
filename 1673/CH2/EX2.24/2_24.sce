//ramanujan's method
//example 2.23
//page 47
clc;clear;close;
deff('y=f(x)','1-(x-x^2/factorial(2)^2+x^3/factorial(3)^2-x^4/factorial(4)^2)');
a1=1,a2=-1/(factorial(2)^2),a3=1/(factorial(3)^2),a4=-1/(factorial(4)^2),a5=-1/(factorial(5)^2),a6=1/(factorial(6)^2);
b1=1;
b2=a1;
b3=a1*b2+a2*b1;
b4=a1*b3+a2*b2+a3*b1;
b5=a1*b4+a2*b3+a3*b2;
printf('\n\n%f',b1/b2);
printf('\n%f',b2/b3);
printf('\n%f',b3/b4);
printf('\n%f',b4/b5);
printf('\n it appears as if the roots are converging at around %f',b4/b5);