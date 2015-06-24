//example 1.6
//absolute error and relative error
//page 10
clc;clear;close;
s=sqrt(3)+sqrt(5)+sqrt(7);//the sum square root of 3,5,7
n=4;
Ea=3*((10^-n)/2);//absolute error
R_E=Ea/s;
printf('the sum of square roots  is %0.4g \n',s );
printf('the absolute error is %f \n',Ea);
printf('the relative error is %f ',R_E);

