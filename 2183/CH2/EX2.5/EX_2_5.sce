// Example 2.5: Core and Cladding Index
clc;
clear;
close;
NA=0.3;// numerical aperture
d= 0.01;// Cange in core-cladding refractive index
r=(1-d);//ratio
n1=sqrt(((NA)^2)/(1-r^2));//core refrative index
n2= n1-(d*n1);
disp(n1,"refrative index of core is")
disp(n2,"Refradctive index of cladding is")
