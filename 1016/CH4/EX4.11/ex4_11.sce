clc;clear;
//Example 4.11

//calculations
//for (i)
l=1;m=0;n=0;
p=0;q=1;r=0;
d=acosd((l*p+m*q+n*r)/(sqrt(l^2+m^2+n^2)*sqrt(p^2+q^2+r^2)));
disp(d,'angle b/w pair of miller incdices in (i)');
//for (ii)
l=1;m=2;n=1;
p=1;q=1;r=1;
d=acosd((l*p+m*q+n*r)/(sqrt(l^2+m^2+n^2)*sqrt(p^2+q^2+r^2)));
disp(d,'angle b/w pair of miller incdices in (ii)')