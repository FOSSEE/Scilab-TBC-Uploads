//relative error
//example 1.10
//page 12
clc;clear;close;
a=6.54;b=48.64;c=13.5
da=0.01;db=0.02;dc=0.03;
s=(a^2*sqrt(b))/c^3;
disp(s,'s=');
r_err=2*(da/a)+(db/b)/2+3*(dc/c);
printf(' the relative error is :%f',r_err);
