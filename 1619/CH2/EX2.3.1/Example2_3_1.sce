//Example 2.3.1 page 2.20

clc;
clear;

alpha = 2;
n1= 1.5;
del= 0.01;
a= 25*10^-6;
lamda= 1.3*10^-6;
M= 0.5;
NA= sqrt(0.5*2*1.3^2/(%pi^2*25^2));
Rc= 3*n1^2*lamda/(4*%pi*NA^3);
Rc=Rc*1000; // converting into um.....
printf("The radius of curvature is %.2f um",Rc);
