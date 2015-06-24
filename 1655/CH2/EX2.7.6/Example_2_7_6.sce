// Example 2.7.6  page 2.27

clc;
clear;

delta=1/100;        //relative refractive index
n1=1.3;     //core refractive index
lamda=1100d-9;     //wavelength

a=(2.4*lamda)/(2*3.14*n1*sqrt(2*delta));        //computing radius of core
d=2*a;      //computing diameter of core
a=a*10^6;
d=d*10^6;
printf("\nCore radius is %.1f micrometer\nCore diameter is %.1f micrometer",a,d);
printf("\nNOTE - In the book they have asked diameter of core. However, they have calculated only radius.");
