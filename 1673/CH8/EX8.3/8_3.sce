//example 8.3
//picard's method
//page 306
clc;clear;close;
deff('z=f(x,y)','z=x+y^2')
y(1)=1;
for i=1:2
    y(i+1)=y(1)+integrate('f(x,y(i))','x',0,i /10);
    printf ( ' \n y (%g) = %g\n ' ,i/10 ,y(i +1) );
    end