//Example 15.7
//Picard Method
//Page no. 511
clc;clear;close;
deff('y=f(x,y)','y=x^2+y^2')
y(1)=0;
for i=1:2
    y(i+1)=y(1)+integrate('f(x,y(i))','x',0,i/10)
    printf('\n y(%g) = %g\n',i/10,y(i+1))
end