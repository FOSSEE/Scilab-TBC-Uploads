//Example 10.8
//Picard Method
//Page no. 313
clc;clear;close;
deff('y=f(x,y)','y=x^2-y')
y(1)=1;
for i=1:5
    y(i+1)=y(1)+integrate('f(x,y(i))','x',0,0.2)
    printf('\n y%g = %g\n',i,y(i+1))
end