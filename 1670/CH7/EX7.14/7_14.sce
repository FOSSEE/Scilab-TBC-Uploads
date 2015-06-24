//Example 7.14
//Newtons Divided Difference
//Page no. 249
clc;close;clear;

x=[3,5,11,27,34]
y=[-13,23,899,17315,35606]
deff('y=f(x1)','y=a1+a2*((x1-x(2))+(x1-x(3)))')
a1=(y(3)-y(2))/(x(3)-x(2))
a2=((y(4)-y(3))/(x(4)-x(3))-(y(3)-y(2))/(x(3)-x(2)))/(x(4)-x(2))
disp(y,"y:",x,"x:")
printf('\n\n a1 = %g\t\ta2 = %g\n\n',a1,a2)
disp(f(10),"f`(10) = ")