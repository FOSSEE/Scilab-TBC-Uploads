//example 8.4
//picard's method
//page 306
clc;clear;close;
deff('z=f(x,y)','z=x^2/(y^2+1)')
y(1)=0;//value at 0
c=0.25;
for i=1:3
    y(i+1)=y(1)+integrate('f(x,y(i))','x',0,c);
    printf ( ' \n y(%0.2f) = %g\n',c ,y(i +1) );
    c=c*2;
    end