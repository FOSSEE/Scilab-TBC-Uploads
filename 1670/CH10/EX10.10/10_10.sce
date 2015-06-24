//Example 10.10
//Picard Method
//Page no. 314
clc;clear;close;
deff('y=f(x,y)','y=1+x*y')
y(1)=1;
for i=1:5
    y(i+1)=y(1)+integrate('f(x,y(i))','x',0,0.1)
    printf('\n y%g = %.10g\n',i,y(i+1))
end