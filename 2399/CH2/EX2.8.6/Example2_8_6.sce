// Example 2.8.6
clc;
clear;
delta=0.015;        //relative refractive index
n1=1.48;     //core refractive index
lamda=0.85d-6;     //wavelength
a=(2.4*lamda)/(2*3.14*n1*sqrt(2*delta));        //computing radius of core
d=2*a;      //computing diameter of core
a=a*10^7;
a=round(a);
a=a/10
d=d*10^6;
printf("\nCore radius is %.1f micrometer.\nCore diameter is %.1f micrometer.",a,2*a);
printf("\n\nWhen delta is reduced by 10 percent-");
delta=0.0015;
a=(2.4*lamda)/(2*3.14*n1*sqrt(2*delta));        //computing radius of core
d=2*a;      //computing diameter of core
a=a*10^7;
a=round(a);
a=a/10
d=d*10^6;
printf("\nCore radius is %.1f micrometer.\nCore diameter is %.1f micrometer.",a,2*a);
