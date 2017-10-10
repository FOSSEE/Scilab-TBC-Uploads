clc;
clear;
a=0.82 //cell parameter in nm
b=0.94 //cell parameter in nm
c=0.75 //cell parameter in nm
h=1 //x intercept of parallel plane
k=2 // intercept of parallel plane
l=3 //z intercept of parallel plane

//calculation
d_123=((h/a)^2+(k/b)^2+(l/c)^2)^(-1/2)
d_246=d_123/2
mprintf("The interplanar distance between 123 planes is = %1.2f and 246 planes is = %1.3f",d_123,d_246)
//The answer provided in the textbook is wrong.
